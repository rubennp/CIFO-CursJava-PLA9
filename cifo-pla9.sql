create database if not exists `cifo-pla9`;

use `cifo-pla9`;

create table users(
      username varchar(50) not null primary key,
      password varchar(68) not null,
      enabled boolean not null);
      
  create table authorities (
      username varchar(50) not null,
      authority varchar(50) not null,
      constraint fk_authorities_users foreign key(username) references users(username));
      create unique index ix_auth_username on authorities (username,authority);

insert into users values 
('antonio', '{bcrypt}$2y$12$uLpHj9LylzZ.ZNQc/4nU3.faymbn/8QksXF1OkhRg6aNt2C3GHYv.', true), 
('rosa', '{bcrypt}$2y$12$2VT7APDm6VHD67gVd4kzpuWg/ZTB6VwVc3NQKJIq9vN5QxgNxJ9w2', true),
('ruben', '{bcrypt}$2y$12$VqJTAENQR2QiBPCRo8dFwukSo9h77Pf2LX4Qxh8d6.It4xBi1gRDi', true);

insert into authorities values 
('antonio', 'ROLE_COLABORADOR'),
('rosa', 'ROLE_EDITOR'),
('ruben', 'ROLE_ADMIN');