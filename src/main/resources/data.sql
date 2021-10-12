INSERT INTO companies (id, name, address, phone)
VALUES (50000, 'ТСЖ', 'Чикаго', 222333);

INSERT INTO addresses (id, city, street, house, building, apartment)
VALUES (80000, 'Чикаго', 'улица Ленина', '1', null, '11'),
       (80001, 'Чикаго', 'улица Ленина', '1', null, '21'),
       (80002, 'Чикаго', 'улица Ленина', '1', null, '31'),
       (80003, 'Чикаго', 'улица Ленина', '3', 'A', '3');

INSERT INTO users (id, phone, email, first_name, second_name, patronymic, address_id, company_id)
VALUES (60000, 70000000000, 'user0@mail.ru', 'Петр', 'Петров', 'Петрович', 80002, 50000),
       (60001, 71111111111, 'user1@mail.ru', 'Сидор', 'Сидоров', 'Сидорович', 80000, 50000),
       (60002, 72222222222, 'user2@mail.ru', 'Иван', 'Иванов', 'Иванович', 80001, 50000),
       (60003, 73333333333, 'user3@mail.ru', 'Фирс', 'Фирсов', 'Фирсович', 80003, 50000);

INSERT INTO user_roles (role, user_id)
VALUES ('USER', 60000),
       ('USER', 60001),
       ('USER', 60003),
       ('ADMIN', 60002),
       ('USER', 60002);

INSERT INTO maters (id, name, user_id)
VALUES (70000, 'эл.юз1', 60000),
       (70001, 'г.вод.юз1', 60000),
       (70002, 'х.вод.юз1', 60000),
       (70003, 'газ.юз1', 60000),
       (70004, 'газ.юз2', 60001),
       (70005, 'х.вод.юз2', 60001),
       (70006, 'газ.юз3', 60002),
       (70007, 'х.вод.юз3', 60002),
       (70008, 'г.вод.юз3', 60002);

INSERT INTO mater_values (id, mater_id, date, value)
VALUES (80000, 70000, '2021-09-06 17:30:45.000000', 100),
       (80001, 70001, '2021-09-06 17:30:45.000000', 200),
       (80002, 70002, '2021-09-06 17:30:45.000000', 300),
       (80003, 70003, '2021-09-06 17:30:45.000000', 400),
       (80004, 70004, '2021-09-06 17:30:45.000000', 500),
       (80005, 70005, '2021-09-06 17:30:45.000000', 600),
       (80006, 70006, '2021-09-06 17:30:45.000000', 700),
       (80007, 70007, '2021-09-06 17:30:45.000000', 800);

