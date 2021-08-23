## 少儿编程后端

+ 基于Ｎode.js+ThinkJS+MySQL

### 本地配置
#### 数据库
##### 1、创建数据库robotDB  
+ 可以使用Navicat软件创建数据库，也可以用以下命令创建：
```
CREATE SCHEMA `robotDB` DEFAULT CHARACTER SET utf8mb4 ;
```
> 注意数据库字符编码为utf8mb4
##### 2、在robotDB数据中导入项目根目录下的robotDB.sql


##### 3、更改数据库配置
> src/common/config/database.js
```
const mysql = require('think-model-mysql');

module.exports = {
    handle: mysql,
    database: 'robotDB',
    prefix: 'robot_',//表名前缀
    encoding: 'utf8mb4',
    host: '127.0.0.1',//数据库url
    port: '3306',
    user: 'root',
    password: '12345678', //你的密码
    dateStrings: true
};
```

+ 接口说明文档
```
api.md
```

+ 开源图片、开源图标资源来源
```
http://www.freepik.com
https://www.iconfinder.com
```

+ npm版本
```
npm -v
7.6.3
```
+ 安装依赖并调试启动
```
npm install
npm start
```
启动后，本地访问 http://127.0.0.1:8088/

### 云端部署
+ 使用pm2进程管理器部署(未完待续...)