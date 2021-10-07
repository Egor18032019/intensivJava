INSERT INTO public.companies (id, name, address, phone)
VALUES (50000, 'ТСЖ', 'Чикаго', 222333);

INSERT INTO public.users (id, phone, email, first_name, second_name, patronymic, address, company_id)
VALUES (60000, 70000000000, 'user0@mail.ru', 'Петр', 'Петров', 'Петрович', 0, 50000);
INSERT INTO public.users (id, phone, email, first_name, second_name, patronymic, address, company_id)
VALUES (60001, 71111111111, 'user1@mail.ru', 'Сидор', 'Сидоров', 'Сидорович', 1, 50000);
INSERT INTO public.users (id, phone, email, first_name, second_name, patronymic, address, company_id)
VALUES (60002, 72222222222, 'user2@mail.ru', 'Иван', 'Иванов', 'Иванович', 2, 50000);
INSERT INTO public.users (id, phone, email, first_name, second_name, patronymic, address, company_id)
VALUES (60003, 73333333333, 'user3@mail.ru', 'Фирс', 'Фирсов', 'Фирсович', 3, 50000);

INSERT INTO public.maters (id, name, user_id) VALUES (70000, 'эл.юз1', 60000);
INSERT INTO public.maters (id, name, user_id) VALUES (70001, 'г.вод.юз1', 60000);
INSERT INTO public.maters (id, name, user_id) VALUES (70002, 'х.вод.юз1', 60000);
INSERT INTO public.maters (id, name, user_id) VALUES (70003, 'газ.юз1', 60000);
INSERT INTO public.maters (id, name, user_id) VALUES (70004, 'газ.юз2', 60001);
INSERT INTO public.maters (id, name, user_id) VALUES (70005, 'х.вод.юз2', 60001);
INSERT INTO public.maters (id, name, user_id) VALUES (70006, 'газ.юз3', 60002);
INSERT INTO public.maters (id, name, user_id) VALUES (70007, 'х.вод.юз3', 60002);
INSERT INTO public.maters (id, name, user_id) VALUES (70008, 'г.вод.юз3', 60002);

INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80000, 70000, '2021-09-06 17:30:45.000000', 100);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80001, 70000, '2021-10-06 17:30:45.000000', 110);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80002, 70001, '2021-09-06 17:30:45.000000', 200);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80003, 70001, '2021-10-06 17:30:45.000000', 210);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80004, 70002, '2021-09-06 17:30:45.000000', 300);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80005, 70002, '2021-10-06 17:30:45.000000', 310);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80006, 70003, '2021-09-06 17:30:45.000000', 400);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80007, 70003, '2021-10-06 17:30:45.000000', 410);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80008, 70004, '2021-09-06 17:30:45.000000', 500);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80009, 70004, '2021-10-06 17:30:45.000000', 510);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80010, 70005, '2021-09-06 17:30:45.000000', 600);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80011, 70005, '2021-10-06 17:30:45.000000', 610);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80012, 70006, '2021-09-06 17:30:45.000000', 700);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80013, 70006, '2021-10-06 17:30:45.000000', 710);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80014, 70007, '2021-09-06 17:30:45.000000', 800);
INSERT INTO public.mater_values (id, mater_id, date, value) VALUES (80015, 70007, '2021-10-06 17:30:45.000000', 810);

INSERT INTO public.addresses (id, user_id, city, street, house, building, apartment) VALUES (80002, 60002, 'Чикаго', 'улица Ленина', '1', null, '31');
INSERT INTO public.addresses (id, user_id, city, street, house, building, apartment) VALUES (80000, 60000, 'Чикаго', 'улица Ленина', '1', null, '11');
INSERT INTO public.addresses (id, user_id, city, street, house, building, apartment) VALUES (80003, 60003, 'Чикаго','улица Ленина', '3', 'A',  '3');
INSERT INTO public.addresses (id, user_id, city, street, house, building, apartment) VALUES (80001, 60001, 'Чикаго', 'улица Ленина', '1', null, '21');
