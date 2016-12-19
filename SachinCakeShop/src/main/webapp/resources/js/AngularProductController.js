var app=angular.module('myapp',[]);
app.controller('myCtrl',function($scope,$http) {
	
	$http.get("product")
	.then(function(response){
		$scope.data=response.data;
	});
	
	$scope.sort=function(keyname){
		$scope.sortKey=keyname;
		$scope.reverse=!$scope.reverse;
	}
	
});
