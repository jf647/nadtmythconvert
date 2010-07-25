CREATE TABLE nadtmyth_converted (
  id int not null auto_increment primary key,
  chanid int(10) NOT NULL,
  starttime datetime NOT NULL,
  basename varchar(255) NOT NULL,
  storagegroup varchar(32) NOT NULL,
  destformat varchar(10) NOT NULL,
  destdir varchar(255) NOT NULL,
  destfile varchar(255) NOT NULL,
  convertdate datetime NOT NULL
);
CREATE UNIQUE INDEX nadtmyth_idx1 ON nadtmyth_converted ( chanid, starttime, destformat );

CREATE TABLE nadtmyth_linked (
  id int not null auto_increment primary key,
  chanid int(10) NOT NULL,
  starttime datetime NOT NULL,
  basename varchar(255) NOT NULL,
  storagegroup varchar(32) NOT NULL,
  linkformat varchar(10),
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
  url VARCHAR(250)
);
CREATE UNIQUE INDEX nadtmyth_publish_s3_idx1 ON nadtmyth_publish_s3( to_publish_dest_id );

CREATE TABLE nadtmyth_to_publish_inform (
  id int not null auto_increment primary key,
  to_publish_dest_id int not null references nadtmyth_to_publish_dest(id),
  email VARCHAR(50) NOT NULL,
  informed boolean default false,
  inform_date datetime,
  purge_date datetime
);
CREATE UNIQUE INDEX nadtmyth_to_publish_inform_idx1 ON nadtmyth_to_publish_inform( to_publish_dest_id, email );

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
