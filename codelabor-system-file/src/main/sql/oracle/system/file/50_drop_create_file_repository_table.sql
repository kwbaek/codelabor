DROP TABLE FILE_REPOSITORY CASCADE CONSTRAINTS PURGE;

CREATE TABLE FILE_REPOSITORY
(
	FILE_ID				VARCHAR2(128) PRIMARY KEY NOT NULL,
	MAP_ID				VARCHAR2(128),
	REAL_FILE_NAME	 	VARCHAR2(512),
	UNIQUE_FILE_NAME	VARCHAR2(512),
	REPOSITORY_PATH		VARCHAR2(512),
	CONTENT_TYPE		VARCHAR2(64),
	FILE_SIZE			NUMBER(32),
	BLOB_DATA 			BLOB
);


