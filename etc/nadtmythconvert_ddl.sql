CREATE TABLE converted (
  id int not null auto_increment primary key,
  `chanid` int(10) NOT NULL,
  `starttime` datetime NOT NULL,
  `basename` varchar(255) NOT NULL,
  `storagegroup` varchar(32) NOT NULL,
  `destformat` varchar(10) NOT NULL,
  `destdir` varchar(255) NOT NULL,
  `destfile` varchar(255) NOT NULL,
  `convertdate` datetime NOT NULL
);
CREATE UNIQUE INDEX converted_program ON converted ( chanid, starttime, destformat );

CREATE TABLE linked (
  id int not null auto_increment primary key,
  `chanid` int(10) NOT NULL,
  `starttime` datetime NOT NULL,
  `basename` varchar(255) NOT NULL,
  `storagegroup` varchar(32) NOT NULL,
  `linkformat` varchar(10),
  `linkdir` varchar(255) NOT NULL,
  `linkfile` varchar(255) NOT NULL,
  `linkdate` datetime NOT NULL
);
CREATE INDEX linked_program ON linked ( chanid, starttime, linkformat );

CREATE TABLE published (
  id int not null auto_increment primary key,
  chanid int(10) NOT NULL,
  starttime datetime NOT NULL,
  format varchar(10) NOT NULL,
  location enum('local','s3') NOT NULL,
  title varchar(128) NOT NULL,
  subtitle varchar(128) NOT NULL,
  description text NOT NULL,
  category varchar(64) NOT NULL,
  progstart datetime NOT NULL,
  progend datetime NOT NULL,
  publishdir varchar(255) NOT NULL,
  publishfile varchar(255) NOT NULL,
  publishurl varchar(255) NOT NULL,
  publishdate datetime NOT NULL,
  purgedate datetime NOT NULL
);
CREATE UNIQUE INDEX published_program ON published ( chanid, starttime, format, location );
