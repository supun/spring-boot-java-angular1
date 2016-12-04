//riskCategoryDropDownDirective.js

angular.module('customDirectives')
	.controller('riskCategoryDropDownDirectiveController', ['$scope', function($scope) {

		$scope.categoryList = [
                              {code:"",name:""},
		                      {code:"A",name:"Engine Room and Machinery Activities"},
		                      {code:"B",name:"Deck Maintenance"},
		                      {code:"C",name:"Bridge and Navigation"},
		                      {code:"D",name:"Containers- Cargo and Ballast Operations"},
		                      {code:"E",name:"Oil Tankers – Cargo and Ballast Operations"},
		                      {code:"F",name:"Chemical Tankers - Cargo and Ballast Operations"},
		                      {code:"G",name:"Mooring Operations"},
		                      {code:"H",name:"Galley and Cooking Operations"},
		                      {code:"I",name:"Non-routine tasks"},
		                      {code:"J",name:"Takeover of Vessel into Management"},
		                      {code:"K",name:"Office Tasks"},
		                      {code:"L",name:"Management of Occupational Safety and Health"},
		                      {code:"M",name:"Critical Equipment"},
		                      {code:"N",name:"Management of change"}
                               ];
		
		$scope.selectedCategory = $scope.categoryList[0];
		
		$scope.update = function (){
			
			//alert($scope.selectedCategory);
		}
	}])
	.directive('riskCategoryDropDownDirective', function() {
  return {
    templateUrl: 'riskCategoryDropDownDirectiveTemplate'
  };
});

