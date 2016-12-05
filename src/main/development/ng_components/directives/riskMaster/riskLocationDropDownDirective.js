//riskLocationDropDownDirective.js

angular.module('customDirectives')
	.controller('riskLocationDropDownDirectiveController', ['$scope','$rootScope','riskLocationDropDownService', function($scope,$rootScope,riskLocationDropDownService) {
		
		$scope.locationList = riskLocationDropDownService.getRiskLocationDropDownItems();
		
		$scope.selectedLocation = $scope.locationList[0];

		$scope.updateLocation = function (){
			$rootScope.riskContentItem.riskMaster.riskLocation = $scope.selectedLocation.trim();
		};
		
	}])
	.directive('riskLocationDropDownDirective', function() {
  return {
    templateUrl: 'riskLocationDropDownDirectiveTemplate'
  };
});

