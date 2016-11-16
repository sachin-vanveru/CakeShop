var app=angular.module('myapp',[]);
app.Controller('myCtrl',function($scope,$http) {
	$http.get("/products")
	.then(function(response){
		$scope.data=response.data;
	});
});