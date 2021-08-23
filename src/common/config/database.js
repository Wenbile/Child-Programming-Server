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
