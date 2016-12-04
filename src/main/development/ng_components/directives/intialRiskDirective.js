//assesmentDirective.js
// custom directive for loading packages
angular.module('customDirectives')
	.controller('intialRiskDirectiveController', ['$scope','$rootScope', function($scope, $rootScope) {
	
		var hazardItem = {
		}
		$rootScope.riskActivitList = [{
				activity:'',
				hazardNo:'',
				effectsOfHazards:'',
				controlMeasures: '',
				frequency:'',
				consequence:'',
				riskLevel:''
		}];
		
		// add new hazardItem
		$scope.addHazardItem = function($event){
			$rootScope.riskActivitList.push(hazardItem);
			
		};
		
		// remove Item from list
		$scope.removeHazardItem = function(hazardItem){
			 var index = $rootScope.riskActivitList.indexOf(hazardItem);
				 if($rootScope.riskActivitList.length > 1){
					 $rootScope.riskActivitList.splice(index, 1);     
				 }
		};
		
		// update 
		$scope.calculateRisk = function(hazardItem){
			if(hazardItem.frequency != undefined && hazardItem.consequence != undefined){
				if(hazardItem.frequency!=='N/A' && hazardItem.frequency!=='' && hazardItem.consequence!=='N/A' && hazardItem.consequence!==''){
					hazardItem.riskLevel = parseInt(hazardItem.frequency) * parseInt(hazardItem.consequence);
				}
				else{
					hazardItem.riskLevel = '';
				}
			}else {
				hazardItem.riskLevel = '';
			}
			
		};
	}])
	.directive('intialRiskDirective', function() {
  return {
    templateUrl: 'intialRiskDirectiveTemplate'
  };
});

