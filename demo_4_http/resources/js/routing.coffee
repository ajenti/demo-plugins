angular.module('ajenti.demo4').config ($routeProvider) ->
    $routeProvider.when '/view/demo4',
        templateUrl: '/demo_4_http:resources/partial/index.html'
        controller: 'Demo4IndexController'
