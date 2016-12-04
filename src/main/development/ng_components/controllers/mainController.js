var injectParams = ['$rootScope','$scope','$http','$store'];  // define nav bar dependencies
var MainController = function ($rootScope,$scope,$http,$store) {
 	
	$scope.riskCategory ="";
	$scope.task ="";
	$scope.riskLocation = "";
	$scope.equipment = "";
	$scope.person = "";
	$scope.headOfDept = "";
	$scope.noOfHazards = "";
	
	$rootScope.riskMaster = $store.get('riskmaster') === undefined ? {}:$store.get('riskmaster') ;
	//$scope.riskActivitList = [];
	
	
	
	$scope.submitData = function (){
		$scope.riskLocation = $rootScope.riskLocation;
		$scope.riskCategory = $rootScope.riskCategory;
		$scope.person = $rootScope.riskPerson;
		$scope.headOfDept = $rootScope.riskHod;
		$scope.riskActivitList = $rootScope.riskActivitList;
		console.log($rootScope.riskMaster);
	}
	
	// save data to localStorage 
	$scope.saveData = function(key,value){
		$store.remove(key);  			   // remove existing object with the same key
	    $store.bind($scope, key, value);
	    $rootScope.riskMaster = $store.get(key);
		//$store.
	};
  };

  // inject configs to the MainController
  MainController.$inject = injectParams;
  angular.module('controllersModule',[]).controller("MainController", MainController);
  
  