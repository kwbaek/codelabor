DROP SEQUENCE ACCESS_LOG_SEQ_SEQUENCE;

CREATE SEQUENCE ACCESS_LOG_SEQ_SEQUENCE
	START WITH 0
	MAXVALUE 999999999999999
	MINVALUE 0
	NOCYCLE
	CACHE 20
	NOORDER;