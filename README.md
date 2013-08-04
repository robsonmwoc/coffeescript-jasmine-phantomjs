# coffeescript-jasmine-phantomjs

This project is just a sample of how to use [CoffeeScript][], JavaScript,
[Jasmine][], [PhantomJS][] and Rails together, and get unit and integration
tests running trhough your continuous integration solution.


## Dependencies

This projects has few dependencies. They are listed bellow:

### Ruby gems

* coffee-rails - CoffeeScript adapter for the Rails asset pipeline
* jasminerice - Pain free coffeescript testing under Rails 3.1 or latter
* guard-jasmine - Guard::Jasmine automatically tests your Jasmine specs when files are modified.

For more details, I recommend to visit: http://netzpirat.github.io/guard-jasmine/

### JavaScript interpreter

* [NodeJS][] - http://nodejs.org/
* [instanbul][] - https://npmjs.org/package/istanbul

## BackboneJS


This project is setted with exemples of how to test Rails [Backbone][] based apps.
In a near feature more examples will be added.

## Jasmine + Guard

This project use [Jasmine][] as BDD testing tool, and guard to run all specs
automatically, whenever a JavaScrip/CoffeeScript file is saved.

If you want to run your specs at one, you need to use **guard-jasmine**:

    $ bundle exec guard-jasmine spec

If you only run guard, you will get a guard prompt and a url to run the specs
on the web browser:

    $ bundle exec guard

    17:16:15 - INFO - Guard uses TerminalTitle to send notifications.
    17:16:17 - INFO - Guard::Jasmine starts webrick spec server on port 64054 in development environment (coverage off).
    17:16:21 - INFO - Waiting for Jasmine test runner at http://localhost:64054/jasmine
    17:16:26 - INFO - Run all Jasmine suites
    17:16:26 - INFO - Run Jasmine suite at http://localhost:64054/jasmine
    17:16:30 - INFO - Finished in 0.035 seconds
    17:16:30 - INFO - 4 specs, 0 failures

    17:16:30 - INFO - Done.
    17:16:30 - INFO - Guard is now watching at '~/coffeescript-jasmine-phantomjs'

## Coverage

This project is prepared to verify code coverage, you just need to install
NodeJs JavaScript interpreter and install **instanbul**, as follow:

    $ npm install -g istanbul

Executing the specs with code coverage will generate a coverage folder on the
root of the project. This would cause some problems if you use a coverage tool
to analize Ruby code.

Thus, if you want to run the [Jasmine][] specs with coverage, you can do:

    # This will generate the /coverage folder
    $ guard-jasmine --coverage --coverage-html --coverage-summary

    # To avoid problems, just specify the coverage html folder
    $ guard-jasmine --coverage --coverage-html --coverage-summary --coverage-html-dir=./js_coverage

This command is giant and tedious to be written, so this projects has a rake
task to be used by continous integration tools, or just make our lives easier:

    $ rake jscov

## Author

Developed by Robson Mendonça.

If you like this project, you can watch the repository at [GitHub](https://github.com/robsonmwoc/coffeescript-jasmine-phantomjs) and follow [@robsonmwoc](https://twitter.com/#!/robsonmwoc) on Twitter for project updates.


[Guard]: https://github.com/guard/guard
[PhantomJS]: http://www.phantomjs.org/
[the PhantomJS download section]: http://code.google.com/p/phantomjs/downloads/list
[PhantomJS build instructions]: http://code.google.com/p/phantomjs/wiki/BuildInstructions
[Jasminerice]: https://github.com/bradphelan/jasminerice
[Jasmine]: http://pivotal.github.com/jasmine/
[CoffeeScript]: http://jashkenas.github.com/coffee-script/
[Rails Asset Pipeline]: http://guides.rubyonrails.org/asset_pipeline.html
[Homebrew]: http://mxcl.github.com/homebrew/
