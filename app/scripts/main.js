/*jshint unused: vars */
require.config({
  paths: {
    'angular': '../bower_components/angular/angular',
    'angular-route'    : '../bower_components/angular-route/angular-route',
    'angular-mocks'    : '../bower_components/angular-mocks/angular-mocks',
    'angular-cookies': '../bower_components/angular-cookies/angular-cookies',
    'angular-sanitize': '../bower_components/angular-sanitize/angular-sanitize',
    'angular-resource': '../bower_components/angular-resource/angular-resource'
  },
  shim: {
    'angular' : {'exports' : 'angular'},
    'angular-route': ['angular'],
    'angular-cookies': ['angular'],
    'angular-sanitize': ['angular'],
    'angular-resource': ['angular'],
    'pretty-print' : ['https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?autoload=true&skin=sons-of-obsidian'],
    'angular-mocks': {
      deps: ['angular'],
      'exports': 'angular.mock'
    }
  },
  priority: [
    'angular'
  ]
});

//http://code.angularjs.org/1.2.1/docs/guide/bootstrap#overview_deferred-bootstrap
window.name = 'NG_DEFER_BOOTSTRAP!';

require([
  'angular',
  'app',
  'angular-route',
  'angular-sanitize',
  'angular-resource'
], function(angular, app, ngRoutes, ngSanitize, ngResource) {
  'use strict';
  /* jshint ignore:start */
  var $html = angular.element(document.getElementsByTagName('html')[0]);
  /* jshint ignore:end */
  angular.element().ready(function() {
    angular.resumeBootstrap([app.name]);
  });
});