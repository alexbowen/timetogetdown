/*jshint unused: vars */
define(['angular', 'controllers/main', 'controllers/menu', 'controllers/route']/*deps*/, function (angular, MainCtrl, MenuCtrl, RouteCtrl)/*invoke*/ {
  'use strict';

  return angular.module('timetogetdownApp', ['timetogetdownApp.controllers.MainCtrl',
    'timetogetdownApp.services.Genres',
    'timetogetdownApp.controllers.MenuCtrl',
    'timetogetdownApp.services.Technology',
    'timetogetdownApp.controllers.RouteCtrl',
    'timetogetdownApp.services.Page',
/*angJSDeps*/
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'ui.bootstrap'
])
    .config(function ($routeProvider, $locationProvider) {

      $locationProvider.html5Mode(true);

      $routeProvider
        .when('/', {
          templateUrl: 'views/main.html',
          controller: 'MainCtrl'
        })
        .when('/:page', {
          templateUrl : 'views/page.html',
          controller  : 'RouteCtrl'
        })
        .otherwise({
          redirectTo: '/'
        });
    });
});
