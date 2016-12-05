
(function () {

    var app = angular.module('rootApp', ['ngRoute','controllersModule','serviceModule','customDirectives','localStorage']);
    // configure routing for the application
    // add constants.js file to load the constants destinationsController
    
    app.config(['$routeProvider', function ($routeProvider) {   	
        $routeProvider
        
            .when("/",{
            	controller : 'MainController',
            	templateUrl : './rootTemplate'
            })
             .otherwise({ redirectTo: '' });
       //     $locationProvider.html5Mode(true);

    }]);
   
   }());

/*
var app = angular.module('app', ['ngRoute']);
app.config(['$routeProvider', function($routeProvider) {
    $routeProvider.
        when('/', {templateUrl: './partials/views/root.html',   controller: 'rootCtrl'}}).

        when('/section', {templateUrl: './partials/views/section.html',   controller: 'sectionCtrl'}}).

        otherwise({redirectTo: '/'});
}]);*/





