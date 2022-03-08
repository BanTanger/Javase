# 概念

Mysql数据库-普通表本质还是一个文件

![image-20220308130309833](C:\Users\12902\AppData\Roaming\Typora\typora-user-images\image-20220308130309833.png)

分成三个部分：

+ 数据管理系统 -- 对应mysqld.exe可执行文件
+ 数据库 -- 对应window文件夹
+ 表格 -- 对应文件夹里各个文件



# 代码操作数据库

## 如何创建数据库 

```mysql
# 演示数据库的创建和删除

# 创建数据库
CREATE DATABASE ban_db01;

# 删除数据库
DROP DATABASE ban_db01;

# 创建一个使用utf8字符集的ban_db02数据库
CREATE DATABASE ban_db02 CHARACTER SET utf8

# 创建一个使用utf8字符集，并带校对规则的ban_db03数据库
CREATE DATABASE ban_db03 CHARACTER SET utf8 COLLATE utf8_bin
```



## 校对规则

+ utf8_bin：区分大小写
+ utf8_general_ci：默认，不区分大小写

例如，在使用select查询语句时如果使用utf8_general_ci校对规则就会查到两条结果

```mysql
# select查询 * 表示所有字段 from 表示从哪个表查询 users是表名 where 表示从哪个字段 name = 'tom' 表示查询的名字是tom
SELECT * FROM users WHERE NAME = 'tom' # select查询语句
```





## 备份

### 数据库的备份

```mysql
# 备份，要在Dos下执行mysqldump指令（实际上是在mysql安装目录下）、
mysqldump -u root -p -B ban_db02 ban_db03 > d:\\bak.sql
```

实际上是将mysql指令保存到一个文件里



### 数据库表的备份

在备份数据库代码的基础上，将 -B 去掉即可

```mysql
# 备份 数据库的表
mysqldump -u root -p 数据库 表1，表2 ... 表n > d:\\文件名.sql
```



## 数据库恢复

```mysql
# 恢复数据库（进入MySQL命令行再执行）
mysql -u root -p # 进入mysql数据库
source d:\\bak.sql
```



## 表的操作

### 创建表

```mysql
# 创建表
CREATE TABLE `user`(
	id INT,
	`name` VARCHAR(255),
	`password` VARCHAR(255),
	`birthday` DATE)
	CHARACTER SET utf8 COLLATE utf8_bin ENGINE INNODB
```



### 修改表

```mysql
INSERT INTO t13(birthday,job_time) VALUES('2003-9-14','2022-11-11 10-10-10');
```



## MySQL数据类型（列类型）

![image-20220308145254769](C:\Users\12902\AppData\Roaming\Typora\typora-user-images\image-20220308145254769.png)



+ 数值类型
  + 整型
    + tinyint 【1个字节】
    + smallint 【2个字节】
    + mediumint 【3个字节】
    + **int** 【4个字节】
    + bigint 【8个字节】
  + 小数
    + float 【单精度 4个字节】
    + **double** 【双精度 8个字节】
    + **decimal[M,D]** 【大小不确定】
+ 文本类型（字符串类型）
  + **char 0-255**
  + **varchar 0-65535[0 ~ 2^16-1]**
  + **text 0-2^16-1**
  + longtext 0-2^32-1
+ 二进制数据类型
  + blob[0 ~ 2^16-1]
  + longblob[ 0 ~ 2^32-1]
+   日期类型
  + date 【日期 年月日】
  + time 【时间 时分秒】
  + **datetime 【年月日 时分秒 YYYY-MM-DD HH:mm:ss】**
  + **timestamp [时间戳]**

 

![image-20220308152306748](C:\Users\12902\AppData\Roaming\Typora\typora-user-images\image-20220308152306748.png)



# 字符串的基本使用

+ CHAR（size）固定长度字符串，最大255字符
  + char(4)是定长（固定的大小），即使插入的字符没有达到4个字符`(例如aa)`也会分配成四个字符 `ps:(字符不管是中文还是英文，根据编码格式来指定，一个字肯定对应一个字符，例如 'aaaa' 和 '啊啊啊啊' 都同样占用四个字符)`
+ VARCHAR（size）可变长度字符串，最大65535**字节**（不是字符！！！）
  + 默认用1~3个字节来记录字符编码方式
  + 按utf8编码来说，一个字符占三个字节，所以最大字符是 `(65535 - 3) / 3`
    + 只用varchar才会占用1~3个字节来存放内容长度
  + varchar(4)是变长，插入'aa'实际占用空间只有两个字符。
+ char 和 varchar使用时间
  + char 定长 ： 身份证号，密码md5加密方式，邮编，手机号
  + varchar 变长 ： 留言，文章
  + 查询速度：char > varchar



# 时间类型的基本使用

```mysql
# 演示时间相关的类型
# 创建一张表 date ， datetime , timetamp
CREATE TABLE t13(
	birthday DATE , -- 生日
	job_time DATETIME,-- 记录年月日 时分秒
	login_time TIMESTAMP 
		NOT NULL DEFAULT CURRENT_TIMESTAMP
		ON UPDATE CURRENT_TIMESTAMP); -- 登陆时间，如果希望login自动更新，添加数据时第三参数就不用设置
		
SELECT * FROM t13;
INSERT INTO t13(birthday,job_time) VALUES('2003-9-14','2022-11-11 10-10-10');
```



​	