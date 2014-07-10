define(['angular'], function (angular) {
  'use strict';

  angular.module('timetogetdownApp.services.Technology', [])
	.factory('Technology', function Technology($resource) {
        return $resource('http://127.0.0.1:3000/api/technology');
	});
});
