
(function () {

  'use strict';

  var app = angular.module('auth', []);

  app.controller('loginController', [
    '$scope', '$http', '$window', function ($scope, $http, $window) {
      $scope.action = '';
      $scope.input  = {};
      $scope.submit = function (form) {
        if (form && form.$valid) {
          $http.post($scope.action, {
            'username': $scope.input.username,
            'password': $scope.input.password
          }).success(function (data, status, headers, config) {
            // if valid $location.path('next');
            // else
          }).error(function (data, status, headers, config) {
            // connection failed
          });
        }
      };
    }
  ]);

  app.controller('registrationController', [
    '$scope', '$http', '$window', function ($scope, $http, $window) {
      $scope.action = '';
      $scope.input  = {};
      $scope.submit = function (form) {
        if ($scope.input.password !== $scope.input.cpassword) {
          Materialize.toast('Password not match!', 3000);
          return false;
        }
        if (form && form.$valid) {
          $http.post($scope.action, {
            'username': $scope.input.username,
            'password': $scope.input.password
          }).success(function (data, status, headers, config) {
            // if valid $location.path('next');
            // else
          }).error(function (data, status, headers, config) {
            // connection failed
          });
        }
      };
    }
  ]);
}());
