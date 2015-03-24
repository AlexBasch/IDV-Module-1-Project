(function (){
	var app = angular.module("library",[]);
	
	app.controller("BookController",['$http', function($http){
		var storage = this;
					
		$http.get('http://localhost/library/books.php/books').success(function(data){
			storage.info = data;
		});
	}]);
	
	app.controller("TabController",function(){
    	this.tab = 1;

    	this.isSet = function(checkTab) {
      		return this.tab === checkTab;
    	};

   		this.setTab = function(setTab) {
      		this.tab = setTab;
    	};
	});	
	
})();