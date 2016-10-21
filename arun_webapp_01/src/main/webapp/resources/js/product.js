
var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope, $http) {
    $http.get("/arun_webapp_01/products/all")
    .then(function(response) {
        $scope.productData = response.data;
    });
});