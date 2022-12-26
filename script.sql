DROP DATABASE OOPSOCIAL_DB;

CREATE DATABASE IF NOT EXISTS OOPSOCIAL_DB;

USE OOPSOCIAL_DB;


CREATE TABLE IF NOT EXISTS OS_USERS(
    USR_ID INT NOT NULL AUTO_INCREMENT,
    USR_NAME VARCHAR(255) NOT NULL,
    USR_EMAIL VARCHAR(255) NOT NULL,
    USR_PHONE VARCHAR(255) NOT NULL,
    USR_PASSWORD VARCHAR(255) NOT NULL,
    USR_SALT VARCHAR(255) NOT NULL,
    PRIMARY KEY (USR_ID)
);
CREATE TABLE IF NOT EXISTS OS_MESSAGES(
	MSG_ID INT NOT NULL AUTO_INCREMENT,
    MSG_CONTENT TEXT,
    MSG_USR_ID_SOURCE INT NOT NULL,
    MSG_USR_ID_DESTINY INT NOT NULL,
    -- MSG_DATE DATE,-- 
    PRIMARY KEY (MSG_ID),
    FOREIGN KEY (MSG_USR_ID_SOURCE) REFERENCES OS_USERS (USR_ID),
    FOREIGN KEY (MSG_USR_ID_DESTINY) REFERENCES OS_USERS (USR_ID)
);



-- TODO: GROUPS,MESSAGE GROUP -- 
INSERT INTO OS_MESSAGES VALUES (MSG_ID,MSG_CONTENT,MSG_USR_ID_SOURCE);
drop table OS_MESSAGES;

SELECT * FROM OS_USERS;

DELETE FROM OS_USERS WHERE USR_NAME = "user";
