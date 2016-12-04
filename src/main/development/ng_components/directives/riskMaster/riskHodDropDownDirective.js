//riskHoDDropDownDirective.js

angular.module('customDirectives')
	.controller('riskHodDropDownDirectiveController', ['$scope', function($scope) {

		$scope.hodList = [
                              {code:"",name:""},
		                      {code:"A",name:"MASTER"},
		                      {code:"B",name:"COFF"},
		                      {code:"C",name:"ADD. CH OFF"},
		                      {code:"D",name:"2 OFF"},
		                      {code:"E",name:"3OFF"},
		                      {code:"F",name:"4 OFF"},
		                      {code:"G",name:"C/E"}
                               ];


		$scope.selectedHoD = $scope.hodList[0];
		
		$scope.update = function (){
			
			//alert($scope.selectedCategory);
		}
	}])
	.directive('riskHodDropDownDirective', function() {
  return {
    templateUrl: 'riskHodDropDownDirectiveTemplate'
  };
});

