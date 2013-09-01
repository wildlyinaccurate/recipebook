'use strict'

app = angular.module 'recipebookApp', ['ngRoute', 'mongolabResource']

app.constant 'API_KEY', 'd540XF9ofceb7TprIYAXFZB-saRrqGaH'
app.constant 'DB_NAME', 'recipebook'

app.config ['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/',
      templateUrl: 'views/main.html'
      controller: 'MainController'
    .when '/add-recipe',
      templateUrl: 'views/recipe-form.html'
      controller: 'RecipeController'
    .otherwise
      redirectTo: '/'
]
