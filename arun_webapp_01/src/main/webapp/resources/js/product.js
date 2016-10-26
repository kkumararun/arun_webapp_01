/*
 Angular Rest Controller
 It'll get the data from @ResponseBody Controller (component)

 */

var mainApp = angular.module("ngAppProduct", []);

mainApp.controller('allProduct', function($scope, $http) {
	$http.get('/arun_webapp_01/products/all').then(function(response) {
		$scope.allProductData = response.data;
	});

	$scope.myDataSort = function(x) {
		$scope.mydata = x;
	}
	
});

mainApp.controller("cartCtrl", function($scope, $http) {

	$scope.refreshCart = function() {
		$http.get('/arun_webapp_01/customer/rest/cart/' + $scope.cartId).success(
				function(data) {
					$scope.cart = data;
				});
	};


	$scope.initCartId = function(cartId) {
		$scope.cartId = cartId;
		$scope.refreshCart(cartId);
	};

	$scope.addToCart = function(productId) {
		alert(productId);
		$http.put('/arun_webapp_01/customer/rest/cart/add/' + productId).success(
				function() {
					alert('Product successfully added to the cart!');
				});
	};

	$scope.removeFromCart = function(productId) {
		$http.put('/arun_webapp_01/customer/rest/cart/remove/' + productId).success(
				function(data) {
					$scope.refreshCart();
				});
	};

	$scope.calGrandTotal = function() {
		var grandTotal = 0;

		for (var i = 0; i < $scope.cart.cartItems.length; i++) {
			grandTotal += $scope.cart.cartItems[i].totalPrice;
		}

		return grandTotal;
	}
});