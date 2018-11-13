var marked = require('marked');
var highlightjs = require('highlightjs');
/*
module.exports = {
    DB: {
        host : 'localhost',
        user : 'root',
        password : 'root',
        database : 'web'
    },
    MarkedOptions: {
        renderer: new marked.Renderer(),
        gfm: true,
        tables: true,
        breaks: false,
        pedantic: false,
        sanitize: false,
        smartLists: true,
        smartypants: false,
        highlight: function (code) {
            return highlightjs.highlightAuto(code).value;
        }
    }
};

*/
module.exports = {
    DB: {
        host : 'us-cdbr-iron-east-01.cleardb.net',
        user : 'b1550945e27ce4',
        password : 'f7658585',
        database : 'heroku_62de7acbc1600c6'

    },
    MarkedOptions: {
        renderer: new marked.Renderer(),
        gfm: true,
        tables: true,
        breaks: false,
        pedantic: false,
        sanitize: false,
        smartLists: true,
        smartypants: false,
        highlight: function (code) {
            return highlightjs.highlightAuto(code).value;
        }
    }
};
