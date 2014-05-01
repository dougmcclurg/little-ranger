angular.module('little-ranger').run(['$templateCache', function($templateCache) {
  'use strict';

  $templateCache.put('app/views/index.html',
    "<!doctype html>\n" +
    "<html class=\"no-js\">\n" +
    "  <head>\n" +
    "      <title>Little Ranger</title>\n" +
    "      <meta charset=\"utf-8\">\n" +
    "      <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n" +
    "      <link rel=\"shortcut icon\" href=\"/favicon.ico\">\n" +
    "      <link rel=\"stylesheet\" href=\"vendor/normalize-css/normalize.css\"></link>\n" +
    "      <link rel=\"stylesheet\" href=\"stylesheets/main.css\"></link>\n" +
    "      <script src=\"vendor/modernizr/modernizr.js\"></script>\n" +
    "  </head>\n" +
    "  <body ng-app=\"little-ranger\">\n" +
    "\n" +
    "    <ui-view></ui-view>\n" +
    "\n" +
    "    <!-- <footer>links</footer> -->\n" +
    "\n" +
    "  </body>\n" +
    "  <script src=\"vendor/angular/angular.js\"></script>\n" +
    "  <script src=\"vendor/angular-ui-router/angular-ui-router.js\"></script>\n" +
    "  <script src=\"vendor/underscore/underscore-min.js\"></script>\n" +
    "  <script src=\"javascript/main.js\"></script>\n" +
    "  <script src=\"javascript/templates.js\"></script>\n" +
    "</html>\n"
  );


  $templateCache.put('app/views/pages/home.html',
    "<header>\n" +
    "  <h1>Little Ranger</h1>\n" +
    "</header>\n" +
    "\n" +
    "<div class=\"hero\">\n" +
    "  <h2>Explore. Collect. Discover.\n" +
    "</div>\n" +
    "\n" +
    "<section class=\"intro\">\n" +
    "  <a ui-sref=\"ranger\">Ranger</a>\n" +
    "  <h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry as opposed to using 'Content here. </h2>\n" +
    "  <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here</p>\n" +
    "</section>\n"
  );


  $templateCache.put('app/views/pages/ranger.html',
    "<h1>Ranger</h1>"
  );

}]);
