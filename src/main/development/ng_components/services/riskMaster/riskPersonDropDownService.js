//riskPersonDropDownService.js
angular.module('serviceModule') 
.service( "riskPersonDropDownService", function(){

	// get riskPersonDropDownItems 
	this.getRiskPersonList = function (){
		return [
	                          {code:"",name:""},
		                      {code:"A",name:"MASTER"},
		                      {code:"B",name:"COFF"},
		                      {code:"C",name:"ADD. CH OFF"},
		                      {code:"D",name:"2 OFF"},
		                      {code:"E",name:"3OFF"},
		                      {code:"F",name:"4 OFF"},
		                      {code:"G",name:"C/E"}
	                           ];

	};
	
});