define(['angular', 'services/page'], function (angular) {
  'use strict';

  angular.module('timetogetdownApp.controllers.RouteCtrl', [])
    .controller('RouteCtrl', function ($scope, $routeParams, Page) {
          // Getting the page from $routeParams
          var page = $routeParams.page || 'home';



          $scope.$emit('routeLoaded', {page: page});
          $scope.page = Page.pages[page];

          console.log('page', page, Page.pages, $scope.page);

          // because this has happened asynchroneusly we've missed
          // Angular's initial call to $apply after the controller has been loaded
          // hence we need to explicityly call it at the end of our Controller constructor
          //$scope.$apply();
    });
});
