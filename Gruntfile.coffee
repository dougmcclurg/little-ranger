{destinationNormalizer, html5Rewrite} = require './config/grunt/helpers.coffee'

module.exports = (grunt) ->

  grunt.initConfig

    pkg : grunt.file.readJSON 'package.json'

    autoprefixer :
      options :
        browsers : ['last 2 versions']

      single_file :
        src : 'public/stylesheets/main.css'
        dest : 'public/stylesheets/main.css'

    bower :
      install :
        options :
          cleanBowerDir : false
          install : true
          targetDir : 'public/vendor'
          layout : 'byType'

    coffee :
      compile :
        files :
          'public/javascript/main.js' : ['app/app.coffee', 'app/**/*.coffee']
        options :
          join : true

    coffeelint :
      app : ['app/**/*.coffee', 'test/**/*.coffee']
      options : grunt.file.readJSON 'config/coffeelint.json'

    connect :
      server :
        options :
          port : 8000
          base : 'public'
          middleware : html5Rewrite

    copy :
      assets :
        files : [
          expand : true
          src : 'app/assets/**/*'
          dest : 'public/'
          rename : destinationNormalizer 'assets'
        ]

      indexTemplate :
        files : [
          expand : true
          flatten : true
          src : 'app/views/index.html'
          dest : 'public/'
        ]

    jasmine_node :
      options :
        coffee : true
        extensions : 'coffee'
        forceExit : true
        specNameMatcher : ''
      all : ['test/server/specs']

    karma :
      options :
        background : false
        configFile : 'test/app/karma.conf.coffee'
        singleRun : true
      ci :
        background : true
      browser :
        singleRun : false
        browsers : ['Chrome']
      dev :
        reporters : ['progress', 'osx']

    ngtemplates :
      app :
        src : 'app/views/**/*.html'
        dest : 'public/javascript/templates.js'
        options :
          module : '<%= pkg.name %>'

    sass :
      dist :
        files :
          'public/stylesheets/main.css' : 'app/stylesheets/main.sass'
      options :
        loadPath : [
          'app/stylesheets'
        ]

    watch :
      options :
        livereload : true

      coffee :
        files : ['app/**/*.coffee', 'test/app/**/*.coffee']
        tasks : ['coffeelint', 'coffee', 'karma:dev']

      style :
        files : 'app/stylesheets/**/*.sass'
        tasks : ['style']

      views :
        files : ['app/views/**/*.html']
        tasks : ['copy:indexTemplate', 'ngtemplates']

    grunt.registerTask 'compile', ['npm-install', 'bower', 'copy', 'lint', 'coffee', 'ngtemplates', 'style']
    grunt.registerTask 'ci', ['lint', 'test:ci']
    grunt.registerTask 'dev', ['compile', 'connect', 'watch']
    grunt.registerTask 'default', ['dev']
    grunt.registerTask 'lint', ['coffeelint']
    grunt.registerTask 'serve', ['connect:server:keepalive']
    grunt.registerTask 'style', ['sass', 'autoprefixer']
    grunt.registerTask 'test', ['jasmine_node', 'compile', 'karma:browser']
    grunt.registerTask 'test:ci', ['jasmine_node', 'karma:ci']

  grunt.loadNpmTasks 'grunt-autoprefixer'
  grunt.loadNpmTasks 'grunt-angular-templates'
  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-connect'
  grunt.loadNpmTasks 'grunt-contrib-copy'
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-sass'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-jasmine-node'
  grunt.loadNpmTasks 'grunt-karma'
  grunt.loadNpmTasks 'grunt-npm-install'
