//riskPersonDropDownDirective.js

angular.module('customDirectives')
	.controller('riskPersonDropDownDirectiveController', ['$scope','$rootScope','$http','riskPersonDropDownService', function($scope,$rootScope,$http,riskPersonDropDownService) {

		//$scope.personList = riskPersonDropDownService.getRiskPersonList ();

		//$scope.selectedPerson = $scope.personList[0];
		
		riskPersonDropDownService.getRiskPersonList($http,function(data){
			$scope.personList = data;
			$scope.selectedPerson = data[0];
		});
		
		$scope.updateRiskPerson= function (){
			
			$rootScope.riskContentItem.riskMaster.personRank  = $scope.selectedPerson.trim();
		}
	
	}])
	.directive('riskPersonDropDownDirective', function() {
  return {
    templateUrl: 'riskPersonDropDownDirectiveTemplate'
  };
});

