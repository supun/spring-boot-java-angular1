//assesmentDirective.js
// custom directive for loading packages
angular.module('customDirectives')
	.controller('fileUploadDirectiveController', ['$scope', function($scope) {
	
		var hazardItem = {
				activity:'Test'
		}
		$scope.riskActivitList = [{
				activity:'Test'
		}];
		
		// add new hazardItem
		$scope.addHazardItem = function($event){
			$scope.riskActivitList.push(hazardItem);
		};
		
		// remove Item from list
		$scope.removeHazardItem = function(hazardItem){
			 var index = $scope.riskActivitList.indexOf(hazardItem);
				 if($scope.riskActivitList.length > 1){
						  $scope.riskActivitList.splice(index, 1);     
				 }
		};
		
	}])
	.directive('fileUploadDirective', function() {
  return {
    templateUrl: 'fileUploadDirectiveTemplate'
  };
});


