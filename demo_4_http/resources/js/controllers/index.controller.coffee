angular.module('ajenti.demo4').controller 'Demo4IndexController', ($scope, $http, notify, pageTitle) ->
    pageTitle.set('Demo: HTTP')

    $scope.a = 8
    $scope.b = 3

    $scope.run = (method) ->
        $http.get("/api/demo4/calculate/#{method}/#{$scope.a}/#{$scope.b}").success (data) ->
            $scope.result = data
        .error (err) ->
            notify.error 'Calculation failed', err.message
            $scope.result = null
