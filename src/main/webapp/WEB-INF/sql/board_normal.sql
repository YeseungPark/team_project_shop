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

SELECT * FROM board_normal 
ORDER BY bn_index DESC;

