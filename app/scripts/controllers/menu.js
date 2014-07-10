define(['angular', 'services/genres', 'services/technology', 'services/page'], function (angular) {
  'use strict';

  angular.module('timetogetdownApp.controllers.MenuCtrl', [])
    .controller('MenuCtrl', function ($scope, Genres, Technology, Page) {
      $scope.awesomeThings = [
        'HTML5 Boilerplate',
        'AngularJS',
        'Karma'
      ];

      $scope.genres = [];

      Genres.query(function(result) {
          angular.forEach(result, function (item) {
              $scope.genres.push(item.name);
              Page.pages[item.name] = {
                  name : item.name
              }
          });
      });

      $scope.technology = [];

      Technology.query(function(result) {
          angular.forEach(result, function (item) {
              $scope.technology.push(item.name);
              Page.pages[item.name] = {
                  name : item.name
              }
          });
      });
    });
});
