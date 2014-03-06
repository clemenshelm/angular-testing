
# Testing Directives

directivesApp = angular.module('directivesApp', [])

directivesApp.directive 'welcome', ->
  restrict: 'E'
  replace:  true
  template: '<h1>Welcome to Angular Testing {{99 + 2}}</h1>'


describe 'great quotes', ->
  it 'Replaces the element with the appropriate content', ->
    module('directivesApp')

    inject ($compile, $rootScope) ->
      # Compile a piece of HTML containing the directive
      element = $compile("<welcome></welcome>")($rootScope)

      # fire all the watches, so the scope expression {{99 + 2}}
      # will be evaluated
      $rootScope.$digest()

      # Check that the compiled element contains the templated content
      expect(element.html())
        .toContain("Welcome to Angular Testing 101")
