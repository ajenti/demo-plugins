angular.module('ajenti.demo5').controller 'Demo5WidgetController', ($scope) ->
    # $scope.widget is our widget descriptor here
    $scope.$on 'widget-update', ($event, id, data) ->
        if id != $scope.widget.id
            return
        $scope.value = data


angular.module('ajenti.demo5').controller 'Demo5WidgetConfigController', ($scope) ->
    # $scope.configuredWidget is our widget descriptor here
    $scope.configuredWidget.config.bytes ?= 4
