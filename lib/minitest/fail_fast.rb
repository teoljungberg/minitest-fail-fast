require "minitest"
require_relative "fail_fast/version"
require_relative "fail_fast_plugin"

module Minitest
  module FailFast
    def self.fail_fast!
      @fail_fast = true
    end

    def self.fail_fast?
      @fail_fast ||= false
    end
  end
end

# Minitest 6+
Minitest.load(:fail_fast) if Minitest.respond_to?(:load)
Minitest::FailFast.fail_fast!
