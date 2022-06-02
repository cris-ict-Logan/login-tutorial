DROP DATABASE IF EXISTS logindb;
CREATE DATABASE logindb;

DROP USER IF EXISTS loginuser@localhost;
CREATE USER loginuser@localhost IDENTIFIED BY '099b1259270a50079e8b30c2ef133d20';
GRANT ALL PRIVILEGES ON logindb.* TO loginuser@localhost;

use logindb;

DROP TABLE IF EXISTS accounts;
CREATE TABLE IF NOT EXISTS `accounts` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
  	`username` varchar(50) NOT NULL,
  	`password` varchar(255) NOT NULL,
  	`email` varchar(100) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


