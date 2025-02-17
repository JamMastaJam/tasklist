insert into users(name, username, password)
values ('John Doe', 'johndoe@gmail.com', '$2a$10$wDfsa6xVjjQi.7bZS6Xr4uwFUuYAFEFRiTMOA1bTS9PB8FezmWR4y'),
       ('Mike Smith', 'mikesmith@yahoo.com', '$2a$10$GX0fWq.qpOFn6a.WrxAOHe45RHIzMids50WLRe/w1BlWc8JDp0ZKq');

insert into tasks(title, description, status, expiration_date)
values ('Buy cheese', null, 'TODO', '2025-06-25 12:00:00'),
       ('Do homework', 'Math, Physics, Literature', 'IN_PROGRESS', '2025-04-10 00:00:00'),
       ('Clean rooms', null, 'DONE', null),
       ('Call Mike', 'Ask about meeting', 'TODO', '2025-04-21 00:00:00');

insert into users_tasks(task_id, user_id)
values (1, 2),
       (2, 2),
       (3, 2),
       (4, 1);

insert into users_roles(user_id, role)
values (1, 'ROLE_ADMIN'),
       (1, 'ROLE_USER'),
       (2, 'ROLE_USER');