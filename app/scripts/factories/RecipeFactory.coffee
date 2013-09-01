'use strict'

angular.module('recipebookApp').factory 'Recipe', ($mongolabResource) ->
  $mongolabResource 'recipe'
