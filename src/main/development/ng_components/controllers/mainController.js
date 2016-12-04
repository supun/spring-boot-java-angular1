var injectParams = ['$rootScope','$scope','$http'];  // define nav bar dependencies
var MainController = function ($rootScope,$scope,$http) {
 	
  };

  // inject configs to the MainController
  MainController.$inject = injectParams;
  angular.module('controllersModule',[]).controller("MainController", MainController);
  
  