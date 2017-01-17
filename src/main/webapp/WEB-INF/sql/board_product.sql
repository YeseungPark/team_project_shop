create table board_product(
	bp_index int auto_increment primary key,
	product_name varchar(100),
	product_price int,
	content varchar(1000),
	thumbnail varchar(100),
	reg_date datetime default now(),
	category varchar(20),
	category_detail varchar(20)
)	