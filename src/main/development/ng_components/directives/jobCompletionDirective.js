//jobCompletionDirective.js
angular.module('customDirectives')
	.controller('jobCompletionDirectiveController', ['$scope','$rootScope', function($scope,$rootScope) {

		/*$scope.selectJobStartDate  = function (jobcommencedate){
			alert(jobcommencedate);
		};*/
		
	}])
	.directive('jobCompletionDirective', function() {
  return {
    templateUrl: 'jobCompletionDirectiveTemplate'
  };
});

