require "minitest"
require_relative "fail_fast_plugin"

# Minitest 6+
Minitest.load(:fail_fast) if Minitest.respond_to?(:load)
Minitest::FailFastReporter.fail_fast!
