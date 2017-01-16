create table member(
member_index int auto_increment primary key,
					ID varchar(50),
					password varchar(20),
					nick varchar(20),
					phone varchar(20),
					post_code varchar(10),
					address1 varchar(50),
					address2 varchar(50),
					point int default 0,
					reg_date datetime default now(),
					authority boolean default 0);