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
