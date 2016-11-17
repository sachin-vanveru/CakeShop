var app=angular.module('myapp',[]);
app.controller('myCtrl',function($scope,$http) {
	$http.get("product")
	.then(function(response){
		$scope.data=response.data;
	});
});