create table branch (
  bno integer primary key,
  street varchar2(30),
  city varchar2(20),
  tel_no varchar2(30) unique
);

create table staff (
  sno integer primary key,
  fname varchar2(30),
  lname varchar2(30),
  address varchar2(30),
  tel_no varchar2(30),
  position varchar2(20),
  sex varchar2(8) check(sex in ('male', 'female')),
  dob date,
  salary integer,
  bno references branch
);

create table property_for_rent(
  pno integer primary key,
  street varchar2(30),
  city varchar2(20),
  type varchar2(2) check(type in ('h', 'f')),
  rooms integer,
  rent integer,
  ono integer,
  sno references staff,
  bno references branch
);

create table renter(
  rno integer primary key,
  fname varchar2(30),
  lname varchar2(30),
  address varchar(30),
  tel_no varchar2(15),
  pref_type varchar2(2) check(pref_type in ('h', 'f')),
  max_rent integer,
  bno references branch
);

create table owner(
  ono integer primary key,
  fname varchar2(30),
  lname varchar2(30),
  address varchar2(30),
  tel_no varchar2(15)
);

alter table property_for_rent
modify ono references owner;

create table viewing (
  rno references renter,
  pno references property_for_rent,
  date_o date,
  comment_0 varchar2(100),
  constraint viewing_pk
  primary key(rno, pno)
);