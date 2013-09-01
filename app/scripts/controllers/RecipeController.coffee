'use strict'

angular.module('recipebookApp')
  .controller 'RecipeController', ['$scope', '$location', '$route', 'Recipe', ($scope, $location, $route, Recipe) ->

    if $route.current.params.id
      $scope.recipe = Recipe.$getById $route.current.params.id
    else
      $scope.recipe = new Recipe()

    saveSuccess = ->
      $location.path('/')

    saveError = ->
      $location.path('/')

    $scope.save = ->
      $scope.recipe.saveOrUpdate saveSuccess, saveSuccess, saveError, saveError

    $scope.cancel = ->
      $location.path('/')

  ]
