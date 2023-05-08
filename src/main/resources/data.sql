insert into users(email, account_non_expired, account_non_locked, credentials_non_expired, enabled, nickname, password, username)
values ('test1@test.com', 1, 1, 1, 1, 'nickname1', 'test1', 'username1'),
       ('test2@test.com', 1, 1, 1, 1, 'nickname2', 'test2', 'username2'),
       ('test3@test.com', 1, 1, 1, 1, 'nickname3', 'test3', 'username3'),
       ('test4@test.com', 1, 1, 1, 1, 'nickname4', 'test4', 'username4');


insert into article(title, content, author_email, create_time, update_time)
values ('title1', 'content1', 'test1@test.com', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
       ('title2', 'content2', 'test1@test.com', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
       ('title3', 'content3', 'test1@test.com', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP),
       ('title4', 'content4', 'test1@test.com', CURRENT_TIMESTAMP,CURRENT_TIMESTAMP);

