/**
 * riskContentItemService.js
 */

// dataservice provider to load and categoryDropDown
angular.module('serviceModule') 
.service( "riskContentItemService", function(){

    // save riskContentItem to db
	
	this.saveRiskContentItem = function($http,$rootScope){
		$http.post("/v1/riskMaster", JSON.stringify($rootScope.riskContentItem))
        .then(function (response) {
            return response;
        });
	};
});