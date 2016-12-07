var injectParams = ['$rootScope','$scope','$http','$store','riskContentItemService'];  // define main controlller dependencies
var MainController = function ($rootScope,$scope,$http,$store,riskContentItemService) {
 	
	$scope.riskCategory ="";
	$scope.task ="";
	$scope.riskLocation = "";
	$scope.equipment = "";
	$scope.person = "";
	$scope.headOfDept = "";
	$scope.noOfHazards = "";
	
	// riskContentItem is used to save / update the db
	if($store.get('riskContentItem') === undefined  || $store.get('riskContentItem') === null  ){
		$rootScope.riskContentItem = {
				
					  "riskMaster":{
										"rskId":"EI/ELSA/2016/100",
										"formNumber":"KLQSMS-Y-C-05",
										"revNumber":"",
										"revDate":"",
										"vesselCode":"",
										"assessmentDate":"",
										"category":"",
										"task":"",
										"locationCode":"",
										"permits":"",
										"eqpUsed":"",
										"personRank":"",
										"headRank":"",
										"hazardCount":"1",
										"companyComment":"",
										"approverName":"",
										"approverRank":"",
										"approvedDate":"",
										"reviewerName":"",
										"reviewerRank":"1",
										"reviewedDate":"",					
										"submittedBy":"",
									    "submitDate":"",				
									    "crDate":"",
									    "jobCommenceDate":"",				
									    "jobCompletedDate":"",
									    "isAdequate":"",
									    "jobComments":"",
									    "isTemplate":"",
									    "curRankId":"",
									    "activeStatus":""
					  }
					  ,
									"initialRskList":[],
									"controlRiskList":[]
					
		};  
	}else {
		$rootScope.riskContentItem = $store.get('riskContentItem');
	}
	/*
	$rootScope.riskMaster = $store.get('riskmaster') === undefined ? {}:$store.get('riskmaster') ;
	//$scope.riskActivitList = [];
	
	*/
	
	$scope.submitData = function (){
		/*$scope.riskLocation = $rootScope.riskLocation;
		$scope.riskCategory = $rootScope.riskCategory;
		$scope.person = $rootScope.riskPerson;
		$scope.headOfDept = $rootScope.riskHod;
		$scope.riskActivitList = $rootScope.riskActivitList;
		console.log($rootScope.riskMaster);
		
		var dataObject = {
				
		}*/
		var jobStartedDate = $( "input[name='jobcommencedate']" ).val();
		var jobCompletedDate = $( "input[name='jobCompleeteddate']" ).val();
		$rootScope.riskContentItem.riskMaster.jobCommenceDate = (new Date(jobStartedDate)).toISOString().slice(0,10);;
		$rootScope.riskContentItem.riskMaster.jobCompletedDate = (new Date(jobCompletedDate)).toISOString().slice(0,10);;
		riskContentItemService.saveRiskContentItem($http,$rootScope);
		
	}
	
	// save data to localStorage 
	$scope.saveData = function(key,value){
		$store.remove(key);  			   // remove existing object with the same key
	    $store.bind($scope, key, value);
	    $rootScope.riskContentItem = $store.get(key);
		//$store.
	};
  };

  // inject configs to the MainController
  MainController.$inject = injectParams;
  angular.module('controllersModule',[]).controller("MainController", MainController);
  
  