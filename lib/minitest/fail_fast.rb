require "minitest"
require_relative "fail_fast_plugin"

Minitest.load(:fail_fast) if Minitest.respond_to?(:load) # MT6

