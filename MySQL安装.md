# 大致流程

1. 安装包zip格式，解压到指定路径，不要带有中文或者空格

2. 新建my.ini格式文件，记事本打开复制下面的话

   ```ini
   [client]
   port=3306
   default-character-set=utf8
   [mysqld]
   # 设置成自己MYSQL的安装目录
   basedir=E:\BanTangerMySQL\mysql-5.7.19-winx64\
   # 设置为MYSOQL的数据目录，此目录由系统自动创建
   datadir=E:\BanTangerMySQL\mysql-5.7.19-winx64\data\
   port=3306
   character_set_server=utf8
   # 跳过安全检测（无密码登陆）
   skip-grant-tables
   ```

3. 配置环境变量的路径，path路径将解压文件夹的bin目录拷贝到path路径中
4. 管理员身份运行cmd命令提示符



# cmd命令

1. 切换盘符 `E:`

2. 在E盘下粘贴拷贝好的目录

   ![image-20220308091721544](C:\Users\12902\AppData\Roaming\Typora\typora-user-images\image-20220308091721544.png)





# 安装MySQL

DOS系统下：敲入以下命令

1. 安装MySQLD：`mysqld -install`

2. 初始化：`mysqld --initialize-insecure --user=mysql`

3. 启动服务器：`net start mysql` 

4. 用户登陆：`mysql -u root -p`

   + 用户名 -u root 管理员身份，密码 -p (第一次登陆之前在my.ini设置了无序密码)

5. 修改密码

   三行命令：

   ```mysql
   use mysql;
   update user set authentication_string=password('123456')where user='root' and Host='localhost';
   flush privileges;
   ```

   

6. 退出：

   ```mysql
   quit
   net stop mysql
   ```

7. 再次登陆

   ```mysql
   net start mysql
   mysql -u root -p
   ```

   

