dependencyInjection =
  insteadOf:
    AngularClass: ->
      @makeItFancy = ->
        xhr = new XHR()
        xhr.open(method, url, true)
        xhr.onreadystatechange = ->
          perform(magic)
        xhr.send()

  weDo:
    AngularClass: (xhr) ->
      @makeItFancy = ->
        xhr.open(method, url, true)
        xhr.onreadystatechange = ->
          perform(magic)
        xhr.send()

coolAngularStuff = []
coolAngularStuff.push dependencyInjection
