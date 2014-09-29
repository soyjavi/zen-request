"use strict";

require('coffee-script/register');
var Zen = require('./lib/zen');


module.exports = {
    Test        : require("./lib/zen.test"),
    start       : function() {
        return Zen.start()
    }
};
