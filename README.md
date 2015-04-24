# Minitest::FailFast

Reimplements RSpec's fail-fast feature, which exits running your test-suite as
there is a test-failure.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'minitest-fail-fast'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install minitest-fail-fast

## Usage

You can either activate the plugin by passing `-f`, `--fail-fast`:

    $ TESTOPTS="--fail-fast" bundle exec rake

Or by requiring `minitest/fail_fast` in your `test_helper`:

## Contributing

1. Fork it ( https://github.com/teoljungberg/minitest-fail-fast/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
