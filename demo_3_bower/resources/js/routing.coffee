angular.module('ajenti.demo3').config ($routeProvider) ->
    $routeProvider.when '/view/demo3',
        templateUrl: '/demo_3_bower:resources/partial/index.html'
        controller: 'Demo3IndexController'
