angular.module('ajenti.demo2').controller 'Demo2IndexController', ($scope, notify, pageTitle) ->
    pageTitle.set('Demo: UI')

    $scope.counter = 0

    $scope.click = () ->
        $scope.counter += 1
        notify.info '+1'
