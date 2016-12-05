//riskHoDDropDownDirective.js

angular.module('customDirectives')
	.controller('riskHodDropDownDirectiveController', ['$scope', '$rootScope','riskHodDropDownService', function($scope,$rootScope,riskHodDropDownService) {

		$scope.hodList = riskHodDropDownService.getRiskHodList();
		
		$scope.selectedHoD = $scope.hodList[0];
		
		$scope.updateHod = function (){
			
			$rootScope.riskContentItem.riskMaster.riskHod  = $scope.selectedHoD.trim();
		};
		
	}])
	.directive('riskHodDropDownDirective', function() {
  return {
    templateUrl: 'riskHodDropDownDirectiveTemplate'
  };
});

