DROP DATABASE IF EXISTS OOPSOCIAL_DB;

CREATE DATABASE IF NOT EXISTS OOPSOCIAL_DB;

USE OOPSOCIAL_DB;


CREATE TABLE IF NOT EXISTS OS_USERS(
    USR_ID INT NOT NULL AUTO_INCREMENT,
    USR_NAME VARCHAR(255) NOT NULL,
    USR_EMAIL VARCHAR(255) NOT NULL,
    USR_PHONE VARCHAR(255) NOT NULL,
    USR_PASSWORD VARCHAR(255) NOT NULL,
    USR_SALT VARCHAR(255) NOT NULL,
    USR_DATE_CREATION TIMESTAMP NOT NULL,
    PRIMARY KEY (USR_ID)
);
CREATE TABLE IF NOT EXISTS OS_MESSAGES(
	MSG_ID INT NOT NULL AUTO_INCREMENT,
    MSG_CONTENT TEXT,
    MSG_USR_ID_SOURCE INT NOT NULL,
    MSG_USR_ID_DESTINY INT NOT NULL,
    MSG_DATE TIMESTAMP,
    PRIMARY KEY (MSG_ID),
    CONSTRAINT FK_MSG_USR_ID_SOURCE FOREIGN KEY (MSG_USR_ID_SOURCE) REFERENCES OS_USERS(USR_ID) ON DELETE CASCADE,
    CONSTRAINT FK_MSG_USR_ID_DESTINY FOREIGN KEY (MSG_USR_ID_DESTINY) REFERENCES OS_USERS (USR_ID) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS OS_ROOMS(
	ROS_ID INT NOT NULL AUTO_INCREMENT,
	ROS_TITLE VARCHAR(255) NOT NULL,
    ROS_ADMIN_ID INT NOT NULL,
    PRIMARY KEY (ROS_ID),
    FOREIGN KEY (ROS_ADMIN_ID) REFERENCES OS_USERS (USR_ID)
);



CREATE TABLE IF NOT EXISTS OS_ROOM_MESSAGES(
	ROM_ID INT NOT NULL AUTO_INCREMENT,
    ROM_ROS_ID INT NOT NULL,
    ROM_USR_ID INT NOT NULL,
    ROM_CONTENT TEXT,
    ROM_DATE TIMESTAMP,
    PRIMARY KEY (ROM_ID),
    CONSTRAINT FK_ROM_USR_ID FOREIGN KEY (ROM_USR_ID) REFERENCES OS_USERS (USR_ID),
	CONSTRAINT FK_ROOM_ID FOREIGN KEY (ROM_ROS_ID) REFERENCES OS_ROOMS(ROS_ID) ON DELETE CASCADE
);