modRewrite = require 'connect-modrewrite'

normalizePath = (path, base) ->
  regex = new RegExp ".*\/#{base}\/?"
  path.replace regex, ''

helpers =

  ###
    Return a function that creates a relative
    destination path to `baseDir`.
    Useful for copy renaming, where you want to
    keep the directory structure from the copied directory,
    just not the tree before it.
  ###
  destinationNormalizer : (baseDir) ->
    (dest, source) ->
      dest + normalizePath(source, baseDir)

  ###
    Delegate path routing to client
  ###
  html5Rewrite : (connect, options, middlewares) ->
    # rewrite for html5 history browsing
    middlewares.push modRewrite(['!\\.html|\\.js|\\.svg|\\.css|\\.png$ /index.html [L]'])
    # serve base dir
    options.base.forEach (base) ->
      middlewares.push connect.static(base)
    middlewares

module.exports = helpers