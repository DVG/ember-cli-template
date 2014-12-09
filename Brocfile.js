/* global require, module */

var EmberApp = require('ember-cli/lib/broccoli/ember-app');

var app = new EmberApp({
  sassOptions: {
    includePaths: [
      'bower_components/assets/stylesheets'
    ]
  }
});

app.import('bower_components/assets/javascripts/bootstrap.js');

module.exports = app.toTree();
