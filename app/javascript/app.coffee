app = angular.module 'little-ranger', ['ui.router']

app.config ($stateProvider, $urlRouterProvider, $locationProvider) ->

  $stateProvider

    .state 'landing',
      url : '/'
      controller : 'Home'
      templateUrl : 'app/views/pages/home.html'

    .state 'ranger',
      url : '/ranger'
      controller : 'Ranger'
      templateUrl : 'app/views/pages/ranger.html'


  $urlRouterProvider.otherwise '/'

  $locationProvider.html5Mode true