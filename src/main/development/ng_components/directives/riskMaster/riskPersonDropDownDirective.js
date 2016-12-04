//riskPersonDropDownDirective.js

angular.module('customDirectives')
	.controller('riskPersonDropDownDirectiveController', ['$scope', function($scope) {

		$scope.personList = [
                              {code:"",name:""},
		                      {code:"A",name:"MASTER"},
		                      {code:"B",name:"COFF"},
		                      {code:"C",name:"ADD. CH OFF"},
		                      {code:"D",name:"2 OFF"},
		                      {code:"E",name:"3OFF"},
		                      {code:"F",name:"4 OFF"},
		                      {code:"G",name:"C/E"}
                               ];


		$scope.selectedPerson = $scope.personList[0];
		
		$scope.update = function (){
			
			//alert($scope.selectedCategory);
		}
	}])
	.directive('riskPersonDropDownDirective', function() {
  return {
    templateUrl: 'riskPersonDropDownDirectiveTemplate'
  };
});

