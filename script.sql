DROP DATABASE OOPSOCIAL_DB;

CREATE DATABASE OOPSOCIAL_DB;

USE OOPSOCIAL_DB;


CREATE TABLE OS_USERS(
    USR_ID INT NOT NULL AUTO_INCREMENT,
    USR_NAME VARCHAR(120) NOT NULL,
    USR_EMAIL VARCHAR(120) NOT NULL,
    USR_PHONE VARCHAR(120) NOT NULL,
    USR_PASSWORD VARCHAR(120) NOT NULL,
    PRIMARY KEY (USR_ID)
);



    
