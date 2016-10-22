var mainApp = angular.module("ngAppProduct", []);
         
         mainApp.controller('allProduct', function($scope,$http) {
        	 $http.get('/arun_webapp_01/products/all')
        	 .then(function(response) {
				$scope.allProductData=response.data;
			});
        	 
        	 
            $scope.myDataSort = function(x) {
                $scope.mydata = x;
              }            
            
                  
         });