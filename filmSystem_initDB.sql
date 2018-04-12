drop sequence ssm_user_id;
create sequence ssm_user_id;

drop table ssm_user;
--用户表
create table ssm_user(
    id      number(7)       primary key,
    username    varchar2(30)    not null unique,
    password    varchar2(30)    not null,
    createtime     date,
    updatetime     date,
    delflag     varchar2(2) not null
   
);

drop sequence ssm_role_id;
create sequence ssm_role_id;

drop table ssm_role;

create table ssm_role(
    id      number(7)       primary key,
    role    varchar2(30)    not null ,
    description    varchar2(30)    not null,
    status    varchar2(30),
    createtime     date,
    updatetime     date,
    delflag     varchar2(2) not null,
    menu_id     number(7),
    user_id     number(7),
    constraint  ssm_user_menu_id_fk foreign key(menu_id) 
    references ssm_menu(id)
   
);


drop sequence ssm_menu_id;
create sequence ssm_menu_id;
drop table ssm_menu;

create table ssm_menu(
    id      number(7)       primary key,
    pid         number(7) not null,
    name        varchar2(30)    not null unique,
    murl        varchar2(30)    not null,
    isparent    varchar2(30)    not null
    
);

drop sequence ssm_film_id;
create sequence ssm_film_id;

drop table ssm_film;

create table ssm_film(
    id      number(7)       primary key,
    filmCode        varchar2(30)    not null ,
    filmName        varchar2(30)    not null ,
    filmPic         varchar2(30)    not null,
    years           varchar2(30)    not null,
    types           varchar2(30)    not null ,
    language        varchar2(50)    not null ,
    caption         varchar2(128)    not null,
    director         varchar2(50)    not null,
    actors          varchar2(128)    not null,
    releaseTime     varchar2(30)    not null ,
    playRoom        varchar2(30)    not null ,
    playTime        date    not null,
    remarks         varchar2(128)    not null,
    delflag         varchar2(2) not null
);

drop sequence ssm_album_id;
create sequence ssm_album_id;
drop table ssm_album;

create table ssm_album(
    aid      number(7)       primary key,
    imgUrl        varchar2(30)    not null,
    af_id    number(7)    not null
    
);


commit;