create table user_db(
	mem_no int unsigned not null primary key AUTO_INCREMENT,
    nickname varchar(45),
    email varchar(45),
    pass varchar(200),
    memPoint int,
    dogamList varchar(1000)
)engine=InnoDB char set=utf8mb4;