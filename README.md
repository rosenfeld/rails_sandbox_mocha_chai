# Mocha/Chai specs for the Rails asset pipeline

Run your specs while taking advantage of the Rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_sandbox_mocha_chai'

Or if you prefer to use the master branch:

    gem 'rails_sandbox_mocha_chai', git: 'git://github.com/rosenfeld/rails_sandbox_mocha_chai' # or:
    gem 'rails_sandbox_mocha_chai', github: 'rosenfeld/rails_sandbox_mocha_chai' # Bundler-pre syntax

And then execute:

    $ bundle
    
## Usage

    $ rake sandbox_assets:serve

If you only intend to use the Mocha/Chai test runner with the Rails Sandbox Assets gem, you can
set the default template to 'mocha_chai/runner' in your config/application.rb, for example:

    config.sandbox_assets.template = 'mocha_chai/runner'

Then name your specs as spec/javascripts/some\_spec.js.coffee.

By default, this gem will only enable the Mocha/Chai test runner for specs under
spec/javascripts/chai/. Run them by browsing to http://localhost:5000/chai.

If you don't want the runner to include 'assert', 'expect' and 'should' to the global namespace
you should add this option to config/application.rb:

    config.sandbox_assets.options[:skip_chai_globals] = true

For more details on settings please take a look at the
[rails-sandbox-assets gem](http://github.com/rosenfeld/rails-sandbox-assets).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
