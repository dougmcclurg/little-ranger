(function() {
  var Home, Ranger, app;

  app = angular.module('little-ranger', ['ui.router']);

  app.config(function($stateProvider, $urlRouterProvider, $locationProvider) {
    $stateProvider.state('landing', {
      url: '/',
      controller: 'Home',
      templateUrl: 'app/views/pages/home.html'
    }).state('ranger', {
      url: '/ranger',
      controller: 'Ranger',
      templateUrl: 'app/views/pages/ranger.html'
    });
    $urlRouterProvider.otherwise('/');
    return $locationProvider.html5Mode(true);
  });

  app.controller('Home', Home = (function() {
    function Home() {}

    Home.prototype.view = function() {
      return {
        title: 'Home'
      };
    };

    return Home;

  })());

  app.controller('Ranger', Ranger = (function() {
    function Ranger() {}

    Ranger.prototype.view = function() {
      return {
        title: 'Ranger'
      };
    };

    return Ranger;

  })());

}).call(this);
