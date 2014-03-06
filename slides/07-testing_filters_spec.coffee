





# Testing Filters

filterApp = angular.module('filterApp', [])

filterApp.filter 'length', ->
  (text) -> (text ? '').length

describe "length filter", ->
  it "determines the length of a string", ->
    module('filterApp')

    inject ($filter) ->
      length = $filter('length')
      expect(length(null)).toEqual(0)
      expect(length('abc')).toEqual(3)
