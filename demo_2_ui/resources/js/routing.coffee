angular.module('ajenti.demo2').config ($routeProvider) ->
    $routeProvider.when '/view/demo2',
        templateUrl: '/demo_2_ui:resources/partial/index.html'
        controller: 'Demo2IndexController'
