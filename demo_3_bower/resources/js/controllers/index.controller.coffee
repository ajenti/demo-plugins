angular.module('ajenti.demo3').controller 'Demo3IndexController', ($scope, $interval, pageTitle) ->
    pageTitle.set('Demo: Bower')

    $scope.labels = ["January", "February", "March", "April", "May", "June", "July"]
    $scope.series = ['Series A', 'Series B']
    $scope.dataTemplate = [
        [65, 59, 80, 81, 56, 55, 40],
        [28, 48, 40, 19, 86, 27, 90]
    ]

    interval = $interval () ->
        $scope.data = [[], []]
        for i in [0...2]
            for j in [0...7]
                $scope.data[i].push $scope.dataTemplate[i][j] + Math.random() * 5
    , 250

    $scope.$on '$destroy', () ->
        $interval.cancel(interval)