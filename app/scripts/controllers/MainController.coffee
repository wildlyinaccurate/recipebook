'use strict'

angular.module('recipebookApp')
  .controller 'MainController', ['$scope', '$location', 'Recipe', ($scope, $location, Recipe) ->

    $scope.recipes = Recipe.query()

    $scope.addRecipe = ->
      $location.path('/add-recipe')

  ]
