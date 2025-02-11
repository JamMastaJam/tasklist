insert into users (name, username, password)
values ('John Doe', 'johndoe@gmail.com', '$2a$12$Fy5vARXxbib6t8FB/ZK8bemhidGM1pPjKCZ7dis7GcrI1H3wWyFDi'),
       ('Mike Smith', 'mikesmith@yahoo.com', '$2a$12$fmoHvz1YgpkVh1MEVByjXuRGAw.ZY/ni101weKM/5CK7K6Gl.FxZS');

insert into tasks (title, description, status, expiration_date)
values ('Buy cheese', null, 'TODO', '2025-02-25 12:00:00'),
       ('Do homework', 'Math, Physics, Literature', 'IN_PROGRESS', '2025-02-23 00:00:00'),
       ('Clean rooms', null, 'DONE', null),
       ('Call Mike', 'Ask about meeting', 'TODO', '2025-02-20 00:00:00');

insert into users_tasks(task_id, user_id)
values (1, 2),
       (2, 2),
       (3, 2),
       (4, 1);

insert into users_roles(user_id, role)
values (1, 'ROLE_ADMIN'),
       (1, 'ROLE_USER'),
       (2, 'ROLE_USER');
