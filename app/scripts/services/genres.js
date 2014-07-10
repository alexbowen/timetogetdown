define(['angular'], function (angular) {
  'use strict';

  angular.module('timetogetdownApp.services.Genres', [])
	.factory('Genres', function Genres($resource) {
          return $resource('http://127.0.0.1:3000/api/genre');
	});
});
