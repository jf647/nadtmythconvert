CREATE TABLE converted (
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
CREATE UNIQUE INDEX converted_program ON converted ( chanid, starttime, destformat );

CREATE TABLE linked (
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
CREATE INDEX linked_program ON linked ( chanid, starttime, linkformat );

CREATE TABLE to_publish (
  id int not null auto_increment primary key,
  converted_id int not null references converted(id),
  complete boolean default false
);
CREATE UNIQUE INDEX to_publish_idx1 ON to_publish ( converted_id );

CREATE TABLE to_publish_dests (
  id int not null auto_increment primary key,
  to_publish_id int not null references to_publish(id),
  dest VARCHAR(10) not null,
  published boolean default false,
  publish_date datetime,
  purge_date datetime,
  informed boolean default false
);
CREATE UNIQUE INDEX to_publish_dests_idx1 ON to_publish_dests( to_publish_id, dest );

CREATE TABLE to_publish_inform (
  id int not null auto_increment primary key,
  to_publish_dests_id int not null references to_publish_dests(id),
  email VARCHAR(50) NOT NULL,
  informed boolean default false,
  inform_date datetime,
  purge_date datetime
);
CREATE UNIQUE INDEX to_publish_inform_idx1 ON to_publish_inform( to_publish_dests_id, email );
