require "minitest"
require_relative "fail_fast_plugin"

Minitest.load_plugins if Minitest::VERSION.to_i < 6
Minitest::FailFastReporter.fail_fast!
