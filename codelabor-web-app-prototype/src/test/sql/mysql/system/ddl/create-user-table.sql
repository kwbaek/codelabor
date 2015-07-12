 create table if not exists users (
    username varchar(50) not null primary key,
    password varchar(100) not null,
    enabled boolean not null
) engine = InnoDb;