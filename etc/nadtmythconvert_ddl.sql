CREATE TABLE nadtmyth_converted (
  id int not null auto_increment primary key,
  chanid int(10) NOT NULL,
  starttime datetime NOT NULL,
  basename varchar(255) NOT NULL,
  storagegroup varchar(32) NOT NULL,
  destformat varchar(10) NOT NULL,
  destdir varchar(255) NOT NULL,
  destfile varchar(255) NOT NULL,
  convertdate datetime NOT NULL,
  destsize int not null default 0
);
CREATE UNIQUE INDEX nadtmyth_idx1 ON nadtmyth_converted ( chanid, starttime, destformat );

CREATE TABLE nadtmyth_linked (
  id int not null auto_increment primary key,
  converted_id int not null references nadtmyth_converted(id),
  linkdir varchar(255) NOT NULL,
  linkfile varchar(255) NOT NULL,
  linkdate datetime NOT NULL
);
CREATE INDEX nadtmyth_idx1 ON nadtmyth_linked ( chanid, starttime, linkformat );

CREATE TABLE nadtmyth_to_publish (
  id int not null auto_increment primary key,
  converted_id int not null references converted(id),
  all_published boolean default false,
  complete boolean default false
);
CREATE UNIQUE INDEX nadtmyth_to_publish_idx1 ON nadtmyth_to_publish ( converted_id );

CREATE TABLE nadtmyth_publish_history (
  id int not null auto_increment primary key,
  chanid int(10) not null,
  starttime datetime not null,
  title varchar(128) not null,
  subtitle varchar(128) not null,
  description text,
  select_date datetime not null
);
CREATE UNIQUE INDEX nadtmyth_publish_history_idx1 ON nadtmyth_publish_history ( chanid, starttime );
CREATE INDEX nadtmyth_publish_history_idx2 ON nadtmyth_publish_history ( title, subtitle );

CREATE TABLE nadtmyth_publish_checksum (
  id int not null auto_increment primary key,
  digest char(32),
  publish_date datetime not null
);
CREATE UNIQUE INDEX nadtmyth_publish_checksum_idx1 ON nadtmyth_publish_checksum( digest );

CREATE TABLE nadtmyth_to_publish_dest (
  id int not null auto_increment primary key,
  to_publish_id int not null references nadtmyth_to_publish(id),
  dest VARCHAR(10) not null,
  published boolean default false,
  publish_date datetime,
  purge_days int NOT NULL,
  purge_date datetime,
  all_informed boolean default false
);
CREATE UNIQUE INDEX nadtmyth_to_publish_dest_idx1 ON nadtmyth_to_publish_dest( to_publish_id, dest );

CREATE TABLE nadtmyth_publish_s3 (
  id int not null auto_increment primary key,
  to_publish_dest_id int not null references nadtmyth_to_publish_dest(id),
  objkey VARCHAR(250),
  url VARCHAR(250),
  public_url VARCHAR(250),
  torrent_url VARCHAR(250)
);
CREATE UNIQUE INDEX nadtmyth_publish_s3_idx1 ON nadtmyth_publish_s3( to_publish_dest_id );

CREATE TABLE nadtmyth_to_publish_inform (
  id int not null auto_increment primary key,
  to_publish_dest_id int not null references nadtmyth_to_publish_dest(id),
  email VARCHAR(50) NOT NULL,
  informed boolean default false,
);
CREATE UNIQUE INDEX nadtmyth_to_publish_inform_idx1 ON nadtmyth_to_publish_inform( to_publish_dest_id, email );

CREATE TABLE nadtmyth_archive_queue (
  id int not null auto_increment primary key,
  orig_chanid int(10) NOT NULL references recorded(chanid),
  orig_starttime datetime NOT NULL references recorded(starttime),
  request_date DATETIME NOT NULL
);
CREATE UNIQUE INDEX nadtmyth_archive_queue_idx1 ON nadtmyth_archive_queue(orig_chanid, orig_starttime);

CREATE VIEW nadtmyth_publish_queue
AS
SELECT
  r.title,
  r.subtitle,
  r.starttime,
  p.id,
  p.complete,
  d.dest,
  i.email
FROM
  recorded r
JOIN
  nadtmyth_converted c ON c.chanid = r.chanid AND c.starttime = r.starttime
JOIN
  nadtmyth_to_publish p ON p.converted_id = c.id
JOIN
  nadtmyth_to_publish_dest d ON d.to_publish_id = p.id
JOIN
  nadtmyth_to_publish_inform i ON i.to_publish_dest_id = d.id
WHERE
  i.email IS NOT NULL;

CREATE VIEW nadtmyth_publish
AS
SELECT
  r.title title,
  r.subtitle subtitle,
  r.starttime starttime,
  c.destsize size,
  l.id linked_id,
  CONCAT_WS('/', l.linkdir, l.linkfile) link,
  p.id publish_id,
  d.id dest_id,
  s.id s3_id,
  i.id inform_id,
  p.all_published all_published,
  p.complete complete,
  d.all_informed all_informed,
  d.dest,
  d.published published,
  d.publish_date publish_date,
  d.purge_date purge_date,
  s.public_url url,
  i.email email,
  i.informed informed
FROM
  recorded r
JOIN
  nadtmyth_converted c ON c.chanid = r.chanid AND c.starttime = r.starttime
JOIN
  nadtmyth_linked l ON l.converted_id = c.id
JOIN
  nadtmyth_to_publish p ON p.converted_id = c.id
JOIN
  nadtmyth_to_publish_dest d ON d.to_publish_id = p.id
JOIN
  nadtmyth_publish_s3 s ON s.to_publish_dest_id = d.id
JOIN
  nadtmyth_to_publish_inform i ON i.to_publish_dest_id = d.id;
