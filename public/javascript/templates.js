angular.module('bootstrap').run(['$templateCache', function($templateCache) {
  'use strict';

  $templateCache.put('app/views/index.html',
    "<!doctype html>\n" +
    "<html class=\"no-js\">\n" +
    "  <head>\n" +
    "      <title>Bootstrap</title>\n" +
    "      <meta charset=\"utf-8\">\n" +
    "      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
    "      <link rel=\"shortcut icon\" href=\"/favicon.ico\">\n" +
    "      <link rel=\"stylesheet\" href=\"vendor/normalize-css/normalize.css\"></link>\n" +
    "      <link rel=\"stylesheet\" href=\"stylesheets/main.css\"></link>\n" +
    "      <script src=\"vendor/modernizr/modernizr.js\"></script>\n" +
    "  </head>\n" +
    "  <body>\n" +
    "    <h1>BOOTSTRAP</h1>\n" +
    "  </body>\n" +
    "  <script src=\"vendor/angular/angular.js\"></script>\n" +
    "  <script src=\"vendor/angular-ui-router/angular-ui-router.js\"></script>\n" +
    "  <script src=\"vendor/underscore/underscore-min.js\"></script>\n" +
    "  <script src=\"javascript/main.js\"></script>\n" +
    "  <script src=\"javascript/templates.js\"></script>\n" +
    "</html>\n"
  );

}]);
