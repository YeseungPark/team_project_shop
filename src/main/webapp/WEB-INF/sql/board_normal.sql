create table board_normal
(
  bn_index int not null AUTO_INCREMENT PRIMARY KEY
  ,nick varchar(50) not null
  ,subject varchar(200) not null
  ,content TEXT NULL
  ,password varchar(30) not null
  ,reg_date TIMESTAMP NOT NULL DEFAULT now()
  ,category varchar(10)  DEFAULT '00'
  );
  
CREATE TABLE nboard_category (
  code int(3) not null 
  ,name varchar(30) not null
);


insert into nboard_category (code,name) VALUES ('00','상품문의');
insert into nboard_category (code,name) VALUES ('01','주문/결제문의');
insert into nboard_category (code,name) VALUES ('02','배송문의');
insert into nboard_category (code,name) VALUES ('03','배송전 취소/변경문의');
insert into nboard_category (code,name) VALUES ('04','교환/반품(환불)문의');
insert into nboard_category (code,name) VALUES ('05','적립금/예치금문의');
insert into nboard_category (code,name) VALUES ('06','기타문의');


SELECT * FROM board_normal 
ORDER BY bn_index DESC;

