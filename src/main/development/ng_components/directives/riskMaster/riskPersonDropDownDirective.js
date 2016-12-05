//riskPersonDropDownDirective.js

angular.module('customDirectives')
	.controller('riskPersonDropDownDirectiveController', ['$scope','$rootScope','riskPersonDropDownService', function($scope,$rootScope,riskPersonDropDownService) {

		$scope.personList = riskPersonDropDownService.getRiskPersonList ();

		$scope.selectedPerson = $scope.personList[0];
		
		$scope.updateRiskPerson= function (){
			
			$rootScope.riskContentItem.riskMaster.riskPerson  = $scope.selectedPerson.trim();
		}
	
	}])
	.directive('riskPersonDropDownDirective', function() {
  return {
    templateUrl: 'riskPersonDropDownDirectiveTemplate'
  };
});

