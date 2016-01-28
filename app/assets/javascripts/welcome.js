var app = angular.module('Fanster', []);

app.controller('FansController', ['$scope', '$http', function($scope, $http){

  $http.get('/api/fans/').then(function(response){
    var data = response.data;
    $scope.fans = data.fans;
  });

  $scope.newFan = {};
  $scope.createTroll = function(){
    $http.post('/api/fans', {fans: $scope.newFan}).then(function(response){
      var data = response.data;
      $scope.fans.push( data );
    });
  };


}]);
