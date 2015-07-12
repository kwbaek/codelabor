create table persistent_logins (
  username varchar2(64) not null,
  series varchar2(64) not null primary key,
  token varchar2(64) not null,
  last_used timestamp not null);