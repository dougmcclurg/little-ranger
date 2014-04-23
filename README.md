Little Ranger

# Setup

Install [NodeJS](http://nodejs.org)

`gem install sass` - install SASS gem

`npm install -g grunt-cli` - install grunt

`npm install` - install all app dependencies

# Run

`grunt` - installs dependencies, compiles code, starts server, live reload

To live reload on changes, installed the [Chrome LiveReload plugin](https://chrome.google.com/webstore/detail/livereload/jnihajbhpnppcggbcgedagnkighmdlei?hl=en)

Runs on port `8000`

# Test

Default `grunt` task runs specs headless via PhantomJS on code changes.

`grunt test` - Runs node tests, compiles client code and run tests in the browser (launches Chrome).

`grunt test:ci` - Runs `test` in headless, single run mode.

`grunt lint` - Runs linter(s)

# CI

`grunt ci` - runs lint and headless tests. (useful for pre-commit)

# Compile and serve

`grunt serve` - compiles and serves code