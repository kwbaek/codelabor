INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000001', 'test_resource_1', '/index.*', '', 'url', 10);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000002', 'test_resource_2', '/XecureObject/**', '', 'url', 100);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000003', 'test_resource_3', '/system/login/home.do*', '', 'url', 1000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000004', 'test_resource_4', '/system/login/xecure/login.do*', '', 'url', 1100);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000005', 'test_resource_5', '/servlet/system/snifferServlet*', '', 'url', 2000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000006', 'test_resource_6', '/servlet/system/sniffer/xecureSnifferServlet*', '', 'url', 2100);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000007', 'test_resource_7', '/servlet/system/file/xecureFileUploadServlet*', '', 'url', 3000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000008', 'test_resource_8', '/system/error/**', '', 'url', 10000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000009', 'test_resource_9', '/system/administration/**', '', 'url', 20000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000010', 'test_resource_10', '/system/preferences/**', '', 'url', 30000);
INSERT INTO RESOURCES (RESOURCE_ID, RESOURCE_NAME, RESOURCE_PATTERN, DESCRIPTION, RESOURCE_TYPE, SORT_ORDER) VALUES ('web-000011', 'test_resource_11', '/**', '', 'url', 99999);

INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000001', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000002', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000003', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000004', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000005', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000006', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000007', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000008', 'IS_AUTHENTICATED_ANONYMOUSLY');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000009', 'ROLE_ADMIN');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000010', 'ROLE_ADMIN');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000010', 'ROLE_USER');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000011', 'ROLE_ADMIN');
INSERT INTO RESOURCES_AUTHORITIES_MAP(RESOURCE_ID, AUTHORITY) VALUES ('web-000011', 'ROLE_USER');

COMMIT;