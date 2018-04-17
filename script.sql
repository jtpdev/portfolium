CREATE DATABASE portfolium;

DROP TABLE IF EXISTS userr;

DROP TABLE IF EXISTS url;

DROP TABLE IF EXISTS media;

DROP TABLE IF EXISTS jobmedia;

DROP TABLE IF EXISTS jobcategory;

DROP TABLE IF EXISTS job;

DROP TABLE IF EXISTS category;

CREATE TABLE userr (
  iduserr INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NULL,
  bios VARCHAR(255) NULL,
  email VARCHAR(50) NULL,
  passwordd VARCHAR(50) NULL,
  gituserulr VARCHAR(100) NULL,
  PRIMARY KEY(iduserr)
);

CREATE TABLE media (
  idmedia INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  path VARCHAR(50) NULL,
  PRIMARY KEY(idmedia)
);

CREATE TABLE category (
  idcategory INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idsubcategory INTEGER UNSIGNED NOT NULL,
  name VARCHAR(20) NULL,
  description VARCHAR(255) NULL,
  PRIMARY KEY(idcategory),
  INDEX category_FKIndex1(idsubcategory)
);

CREATE TABLE job (
  idjob INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  iduserr INTEGER UNSIGNED NOT NULL,
  name VARCHAR(50) NULL,
  description VARCHAR(255) NULL,
  typejob VARCHAR(20) NULL,
  PRIMARY KEY(idjob),
  INDEX job_FKIndex1(iduserr)
);

CREATE TABLE jobcategory (
  idjobcategory INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idcategory INTEGER UNSIGNED NOT NULL,
  idjob INTEGER UNSIGNED NOT NULL,
  PRIMARY KEY(idjobcategory),
  INDEX jobcategory_FKIndex1(idjob),
  INDEX jobcategory_FKIndex2(idcategory)
);

CREATE TABLE jobmedia (
  idjobmedia INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idmedia INTEGER UNSIGNED NOT NULL,
  idjob INTEGER UNSIGNED NOT NULL,
  idmainmedia INTEGER UNSIGNED NULL,
  PRIMARY KEY(idjobmedia),
  INDEX jobmedia_FKIndex1(idjob),
  INDEX jobmedia_FKIndex2(idmedia)
);

CREATE TABLE url (
  idurl INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  idjob INTEGER UNSIGNED NOT NULL,
  url VARCHAR(100) NULL,
  description VARCHAR(255) NULL,
  title VARCHAR(20) NULL,
  PRIMARY KEY(idurl),
  INDEX url_FKIndex1(idjob)
);
