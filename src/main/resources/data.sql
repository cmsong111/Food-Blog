insert into users(email, name, nickname, password, image_url, created_at, updated_at)
values ('test1@test.com', '람머스', '람머스기니', '$2a$10$xPG9Ic8ynytAyuhQqbM4ZeEh/AZoyQ2/oKy7BuBWWxuFalFPhMOyu', 'https://picsum.photos/id/100/300/300',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('test2@test.com', '홍진호', '폭풍저그 홍진호가 간다!', '$2a$10$dwQJc61nGmmLYck9.GVth.htccgDn3Aq6dANUKrpvtz.vAxUnYCFO',
        'https://picsum.photos/id/101/300/300', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('test3@test.com', '형독', '간다 드래프트~!', '$2a$10$W0IprVHIs2WJp47x7Q0z2.Myo5VCYUd//Dv1YfA8RyP0tttnsKjom', 'https://picsum.photos/id/102/300/300',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
       ('test4@test.com', '이중대', '중다이', '$2a$10$W0IprVHIs2WJp47x7Q0z2.Myo5VCYUd//Dv1YfA8RyP0tttnsKjom', 'https://picsum.photos/id/103/300/300',
        CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);


insert into user_roles(user_email, roles)
values ('test1@test.com', 'USER'),
       ('test2@test.com', 'USER'),
       ('test3@test.com', 'USER'),
       ('test4@test.com', 'USER');

insert into article(title, content, author_email, like_count, reply_count, created_at, updated_at)
values ('test', 'test', 'test1@test.com', 0, 0, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
