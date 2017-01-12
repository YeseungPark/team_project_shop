create table product(
    product_index int(11) primary key auto_increment,
    product_name varchar(50),
    product_price int(11),
    product_point int(11),
    product_stoke int(11),
    product_size varchar(20),
    product_color varchar(20),
    content varchar(300),
    reg_date datetime,
    category varchar(20)
);