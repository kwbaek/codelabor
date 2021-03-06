DROP TABLE EXAMPLE_USER_ROLE_MAP;

CREATE TABLE EXAMPLE_USER_ROLE_MAP (
	USER_ID		VARCHAR(32) NOT NULL,
	ROLE_ID		VARCHAR(32) NOT NULL,
	CONSTRAINT FK_USER_ID FOREIGN KEY (USER_ID) REFERENCES EXAMPLE_USER (USER_ID) ON DELETE CASCADE,
	CONSTRAINT FK_ROLE_ID FOREIGN KEY (ROLE_ID) REFERENCES EXAMPLE_ROLE (ROLE_ID) ON DELETE CASCADE
);