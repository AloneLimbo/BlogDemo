//创建数据库

CREATE database limbo_blog;

CREATE TABLE  blog(
 blog_id BIGINT NOT NULL AUTO_INCREMENT COMMENT '文章id',
 title VARCHAR(120) NOT NULL COMMENT '文章名字',
 brief VARCHAR (300) NOt NULL  COMMENT '文章摘要',
 content TEXT NOt NULL COMMENT '文章内容',
 create_time TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
 source VARCHAR (120) NOT NULL COMMENT '文章来源',
 readtimes INT NOT NULL DEFAULT 0  COMMENT '访问次数',
 img VARCHAR (120) NOT NULL COMMENT '文章图片路径',

 PRIMARY KEY (blog_id),
 KEY idx_create_time (create_time)
)ENGINE =InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET =utf8 COMMENT '文章';




INSERT  INTO blog(title,brief,content,source,img) VALUES ('文章1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.',
                                                          '不管活到什么岁数，总有太多思索、烦恼与迷惘，一个人如果失去这些，安于现状，才是真正意义上的青春的完结。','by 渡边淳一','/test/img1');



INSERT  INTO blog(title,brief,content,source,img) VALUES ('文章2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.',
                                                          '不管活到什么岁数，总有太多思索、烦恼与迷惘，一个人如果失去这些，安于现状，才是真正意义上的青春的完结。','by 渡边淳一','/test/img2');



INSERT  INTO blog(title,brief,content,source,img) VALUES ('文章3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam viverra convallis auctor. Sed accumsan libero quis mi commodo et suscipit enim lacinia. Morbi rutrum vulputate est sed faucibus.',
                                                          '不管活到什么岁数，总有太多思索、烦恼与迷惘，一个人如果失去这些，安于现状，才是真正意义上的青春的完结。','by 渡边淳一','/test/img3');

CREATE TABLE  user(
  user_id BIGINT NOT NULL AUTO_INCREMENT COMMENT 'id',

  ip VARCHAR (120) NOT NULL COMMENT 'ip',

  time TIMESTAMP NOT NULL  DEFAULT CURRENT_TIMESTAMP COMMENT '访问时间',



  PRIMARY KEY (user_id),
  KEY idx_create_time (time)
)ENGINE =InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET =utf8 COMMENT '访问表';

