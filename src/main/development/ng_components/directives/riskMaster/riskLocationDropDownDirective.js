//riskLocationDropDownDirective.js

angular.module('customDirectives')
	.controller('riskLocationDropDownDirectiveController', ['$scope','$rootScope','$http','riskLocationDropDownService', function($scope,$rootScope,$http,riskLocationDropDownService) {
		
		riskLocationDropDownService.getRiskLocationDropDownItems($http,function(data){
			$scope.locationList = data;
			$scope.selectedLocation = data[0];
		});
		
	
		$scope.updateLocation = function (){
			$rootScope.riskContentItem.riskMaster.locationCode = $scope.selectedLocation.trim();
		};
		
	}])
	.directive('riskLocationDropDownDirective', function() {
  return {
    templateUrl: 'riskLocationDropDownDirectiveTemplate'
  };
});

