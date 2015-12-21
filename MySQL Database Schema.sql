DROP DATABASE IF EXISTS CRAWLER;

CREATE DATABASE CRAWLER;

USE CRAWLER;

DROP TABLE IF EXISTS DIFFS;

DROP TABLE IF EXISTS BUGS;

DROP TABLE IF EXISTS RECORD;



CREATE TABLE `BUGS` (
  
`BUG_ID` INT(11) PRIMARY KEY,
  
`BUGZILLA_PRODUCT` VARCHAR(50) NOT NULL,
  
`PRODUCT` VARCHAR(300) NOT NULL,
  
`TITLE` VARCHAR(500) NOT NULL,
  
`IMPORTANCE` VARCHAR(100) NOT NULL,
  
`STATUS` VARCHAR(100) NOT NULL,
  
`DESCRIPTION` VARCHAR(50000) NOT NULL,
  
`PARSE_STATUS` VARCHAR(10) NOT NULL DEFAULT 'PENDING'
);





CREATE TABLE `DIFFS` (
  
`BUG_ID` INT(11) NOT NULL,
 
`DIFF_ID` INT(11) PRIMARY KEY,
  
`DIFF` MEDIUMTEXT NOT NULL, 
FOREIGN KEY (`BUG_ID`) REFERENCES `BUGS`(`BUG_ID`) ON DELETE CASCADE ON UPDATE RESTRICT
);





CREATE TABLE `RECORD` (
  
`RECORDID` INT(11) PRIMARY KEY AUTO_INCREMENT,
  
`URL` TEXT NOT NULL
) ;