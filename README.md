# 少儿编程后端
## 介绍
+ 基于Ｎode.js+ThinkJS+MySQL
## Web前端
https://github.com/Wenbile/Child-Programming-Web
## 项目结构
```
├── runtime
│   └── config
│       └── development.json
├── LICENSE
├── README.md
├── api.md //后端接口定义
├── app //自动生成的接口映射
├── development.js //开发环境配置
├── production.js //正式环境配置
├── package-lock.json
├── package.json
├── pm2.json //pm2进程管理器配置
├── robotDB.sql //数据库模型
├── src
│   ├── api
│   │   └── controller 
│   │       ├── base.js //公共接口，其他接口都基于此接口
│   │       └── robot.js //板块、案例编辑接口
│   └── common
│       └── config
│           ├── adapter.js // 适配器配置
│           ├── config.js //开发环境配置
│           ├── config.production.js //正式环境配置
│           ├── database.js //数据库配置
│           ├── extend.js
│           └── middleware.js //中间件配置
└── static
    ├── carousel //轮播图资源
    │   ├── c1.jpg
    │   ├── c2.jpg
    │   └── c3.jpg
    ├── cover //主页卡片资源
    │   ├── art.jpg
    │   ├── book.jpg
    │   ├── code.jpg
    │   ├── game.jpg
    │   ├── globe.jpg
    │   ├── math.jpg
    │   ├── music.jpg
    │   └── science.jpg
    ├── model //模型资源
    │   └── sportcar.babylon
    └── simulator //游戏页素材资源
        ├── loading.gif
        ├── marker.png
        ├── pencil_down.png
        ├── pencil_up.png
        ├── rabbit.png
        ├── restart.png
        └── turtle.png
```

## 数据库
1、创建数据库robotDB  
> 注意数据库字符编码为utf8mb4

- 可以使用Navicat软件创建数据库，也可以用以下命令创建：
```
CREATE SCHEMA `robotDB` DEFAULT CHARACTER SET utf8mb4 ;
```
2、在robotDB数据中导入项目根目录下的robotDB.sql
3、更改数据库配置
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

## 接口说明文档
```
api.md
```

## 开源图片、开源图标资源来源
```
http://www.freepik.com
https://www.iconfinder.com
```

## npm版本
```
npm -v
7.6.3
```
## 安装依赖
```
npm install
```

## 编译运行
```
npm start
```

启动后，本地访问 http://127.0.0.1:8088/

## 云端部署
+ 使用pm2进程管理器部署(未完待续...)