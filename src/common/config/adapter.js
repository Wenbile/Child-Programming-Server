const {
    Console,
    File,
    DateFile
} = require('think-logger3');
const path = require('path');
const database = require('./database.js');

const isDev = think.env === 'development';

/**
 * 是否log数据库连接和请求信息
 * model adapter config
 * @type {Object}
 */
exports.model = {
    type: 'mysql',
    common: {
        logConnect: isDev,
        logSql: isDev,
        logger: msg => think.logger.info(msg)
    },
    mysql: database
};
/**
 * 日志：
 *   isDev   开发模式命令行输出 ： 正式模式log文件记录
 * logger adapter config
 * @type {Object}
 */
exports.logger = {
    type: isDev ? 'console' : 'dateFile',
    console: {
        handle: Console
    },
    file: {
        handle: File,
        backups: 10, // max chunk number
        absolute: true,
        maxLogSize: 50 * 1024, // 50M
        filename: path.join(think.ROOT_PATH, 'logs/app.log')
    },
    dateFile: {
        handle: DateFile,
        level: 'ALL',
        absolute: true,
        pattern: '-yyyy-MM-dd',
        alwaysIncludePattern: true,
        filename: path.join(think.ROOT_PATH, 'logs/app.log')
    }
};
