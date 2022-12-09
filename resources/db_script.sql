-- create table users (
-- 	id int primary key AUTO_INCREMENT,
--     first_name varchar(255),
--     last_name varchar(255),
--     email varchar(255) UNIQUE,
--     `type` VARCHAR(255)
-- );

create table students (
	id int PRIMARY KEY AUTO_INCREMENT,
    serial_number varchar(255),
    user_id int NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

create table professors (
	id int PRIMARY KEY AUTO_INCREMENT,
    `rank` varchar(255),
    user_id int NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- preferences of professors
create table prof_prefs (
	prof_id int NOT NULL,
	stud_id int NOT NULL,
    PRIMARY KEY (prof_id, stud_id),
    FOREIGN KEY (prof_id) REFERENCES users(id),
    FOREIGN KEY (stud_id) REFERENCES users(id)
);

-- preferences of students
create table stud_prefs (
	stud_id int NOT NULL,
    prof_id int NOT NULL,
    PRIMARY KEY (stud_id, prof_id),
    FOREIGN KEY (stud_id) REFERENCES users(id),
    FOREIGN KEY (prof_id) REFERENCES users(id)
);