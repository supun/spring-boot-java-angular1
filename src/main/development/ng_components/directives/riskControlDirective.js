//assesmentDirective.js
// custom directive for loading packages
angular.module('customDirectives')
	.controller('riskControlDirectiveController', ['$scope','$rootScope', function($scope,$rootScope) {
	
		var hazardItem = {
		}
		$rootScope.riskControlActionList = [{
				controlMeasures: '',
				frequency:'',
				consequence:'',
				riskLevel:''
		}];
		
		// add new hazardItem
		$scope.addHazardItem = function($event){
			$rootScope.riskControlActionList.push(hazardItem);
		};
		
		// remove Item from list
		$scope.removeHazardItem = function(hazardItem){
			 var index = $rootScope.riskControlActionList.indexOf(hazardItem);
				 if($rootScope.riskControlActionList.length > 1){
					 $rootScope.riskControlActionList.splice(index, 1);     
				 }
		};
		
		$scope.calculateRisk = function(controlAction){
			if(controlAction.frequency != undefined && controlAction.consequence != undefined){
			if(controlAction.frequency!=='N/A' && controlAction.frequency!=='' && controlAction.consequence!=='N/A' && controlAction.consequence!==''){
				controlAction.riskLevel = parseInt(controlAction.frequency) * parseInt(controlAction.consequence);
			}
			else{
				controlAction.riskLevel = '';
			}
			}else {
				controlAction.riskLevel = '';
			}
		};
		
	}])
	.directive('riskControlDirective', function() {
  return {
    templateUrl: 'riskControlDirectiveTemplate'
  };
});

