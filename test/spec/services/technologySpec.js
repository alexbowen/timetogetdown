/*jshint unused: vars */
define(['angular', 'angular-mocks', 'app'], function(angular, mocks, app) {
  'use strict';

  describe('Service: Technology', function () {

    // load the service's module
    beforeEach(module('timetogetdownApp.services.Technology'));

    // instantiate service
    var Technology;
    beforeEach(inject(function (_Technology_) {
      Technology = _Technology_;
    }));

    it('should do something', function () {
      expect(!!Technology).toBe(true);
    });

  });
});
