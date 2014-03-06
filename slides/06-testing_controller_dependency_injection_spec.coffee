



# Testing Controllers in Angular

myApp = angular.module('myApp', [])

myApp.controller "PasswordController", ($scope) ->
  $scope.password = ''
  $scope.grade = ->
    $scope.strength = 'weak' if $scope.password.length <= 3

describe "the password controller", ->
  it "considers a 3 letter password weak", ->
    module('myApp')

    inject ($controller) ->
      $scope = {}
      $controller('PasswordController', $scope: $scope)
      $scope.password = 'abc'
      $scope.grade()
      expect($scope.strength).toEqual('weak')
