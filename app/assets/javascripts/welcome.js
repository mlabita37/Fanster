var app = angular.module('Fanster', []);

app.controller('FansController', ['$scope', '$http', function($scope, $http){

  $http.get('/api/fans/').then(function(response){
    var data = response.data;
    $scope.fans = data.fans;
  });

  $scope.newFan = {};
  $scope.createFan = function(){
    $http.post('/api/fans', {fan: $scope.newFan}).then(function(response){
      var data = response.data;
      $scope.fans.push( data );
      $scope.newFan = {};
    });
  };


}]);
