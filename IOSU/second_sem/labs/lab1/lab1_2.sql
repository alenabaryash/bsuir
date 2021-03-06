create synonym objects for property_for_rent;

create sequence Staff_seq
increment by 5
start with 10;

insert into branch values (3, 'Гепы, 95', 'Минск', '+375 29 9876542');
insert into branch values (4, 'Кульман, 1', 'Минск', '+375 29 1111114');
insert into branch values (5, 'Соломовой, 98', 'Гродно', '+375 29 3846372');
insert into branch values (6, 'Челюскинцев, 31', 'Брест', '+375 29 3446372');

insert into staff
values (Staff_seq.NEXTVAL, 'Надя', 'Короткевич', 'Садовая, 13', '+375 29 9795925', 'QA', 'female', to_date('2011/04/22', 'yy/mm/dd'), 1200, 3);
insert into staff
values (Staff_seq.NEXTVAL, 'Марина', 'Королева', 'Солнечная, 4', '+375 29 97125925', 'Engineer', 'female', to_date('1995/01/01', 'yy/mm/dd'), 900, 4);
insert into staff
values (Staff_seq.NEXTVAL, 'Дима', 'Билан', 'Попсовая, 42', '+375 29 93125925', 'Singer', 'male', to_date('1994/02/01', 'yy/mm/dd'), 10000, 3);
insert into staff
values (Staff_seq.NEXTVAL, 'Лена', 'Дайлидко', 'Беспробудная, 15', '+375 29 78625925', 'Project Manager', 'female', to_date('1995/06/23', 'yy/mm/dd'), 100, 3);
insert into staff
values (Staff_seq.NEXTVAL, 'Анна', 'Константинова', 'Московская, 12', '+375 44 97125925', 'Writer', 'female', to_date('1990/01/01', 'yy/mm/dd'), 9000, 4);
insert into staff
values (Staff_seq.NEXTVAL, 'Лариса', 'Немцова', 'Приозерная, 7', '+375 25 97125925', 'Engineer', 'female', to_date('1999/02/23', 'yy/mm/dd'), 1900, 4);
insert into staff
values (Staff_seq.NEXTVAL, 'Даша', 'Зыбко', 'Зеленый луг, 7', '+375 25 97146525', 'HR', 'female', to_date('1999/02/23', 'yy/mm/dd'), 100, 5);

insert into renter
values (1, 'Андрей', 'Орсич', 'Минск, Кульман 1', '+375 29 9876543',  'h', 100, 3);
insert into renter
values (2, 'Миша', 'Гологен', 'Минск, Веры, 8', '+375 29 9876534',  'f', 200, 4);
insert into renter
values (3, 'Артур', 'Станкевич', 'Минск, Правды, 12', '+375 29 98745534',  'h', 300, 5);

insert into owner
select sno, fname, lname, address, tel_no from staff;

insert into objects
values (1, 'Правды, 95', 'Пуховичи', 'h', 3, 100, 10, 10, 3);
insert into objects
values (2, 'Звезды, 95', 'Кобрин', 'f', 4, 200, 15, 15, 4);
insert into objects
values (3, 'Марка, 5', 'Минск', 'h', 3, 200, 20, 20, 5);


insert into viewing
values (1, 1, to_date('2017/09/28', 'yyyy/mm/dd'), 'Great!!');
insert into viewing(rno, pno, date_o)
values (1, 2, to_date('2017/09/28', 'yyyy/mm/dd'));
insert into viewing(rno, pno, date_o)
values (2, 1, to_date('2017/01/20', 'yyyy/mm/dd'));
insert into viewing(rno, pno, date_o)
values (3, 1, to_date('2017/01/20', 'yyyy/mm/dd'));