
drop table if exists courses;
create table courses(
    course_id uuid default uuid_generate_v4() primary key,
    course_title varchar(64) not null,
    course_price bigint not null,
    created_at timestamptz default current_timestamp
);

insert into courses(course_title, course_price) values('Web dasturlash', 900000000);
insert into courses(course_title, course_price) values('Backend', 600000000);
insert into courses(course_title, course_price) values('Frontend', 60000000);
alter table courses add column course_price bigint;
delete from courses where course_id = '9d0c5d42-b4cd-49ad-9d31-b8f8f0265ceb';
delete from courses where course_id = '79516dd3-b4cc-4d33-a036-6ddb994dcf15';
delete from courses where course_id = 'a39ad226-7038-483e-9303-46f7706b7896';

drop table if exists teachers;
create table teachers(
    teacher_id uuid default uuid_generate_v4() primary key,
    teacher_name varchar(64) not null,
    created_at timestamptz default current_timestamp
);

insert into teachers(teacher_name) values('Baxtiyor');
insert into teachers(teacher_name) values('Abdulatifxon');
insert into teachers(teacher_name) values('Zafar');

drop table if exists teacher_course;
create table teacher_course(
    teacher_id uuid,
        foreign key(teacher_id)
        references courses(course_id),
    course_id uuid,
        foreign key(course_id)
        references teachers(teacher_id)
);