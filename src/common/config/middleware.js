const path = require('path');
const isDev = think.env === 'development';
const kcors = require('kcors');
module.exports = [{
    handle: kcors, // 处理跨域
    options: {}
}, {
    handle: 'meta',
    options: {
        logRequest: isDev,
        sendResponseTime: isDev
    }
}, {
    handle: 'resource',
    enable: isDev,//资源都在static上
    options: {
        root: path.join(think.ROOT_PATH, ''),
        publicPath: /^\/(static|favicon\.ico)/
    }
}, {
    handle: 'trace',
    enable: !think.isCli,
    options: {
        debug: isDev
    }
}, {
    handle: 'payload',
    options: {}
}, {
    handle: 'router',
    options: {
        defaultModule: 'api',
        defaultController: 'index',
        defaultAction: 'index'
    }
}, 'logic', 'controller'];