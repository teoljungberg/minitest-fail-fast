require "test_helper"
require "minitest/fail_fast"

Minitest.load(:fail_fast) if Minitest::VERSION.to_i >= 6

module Minitest
  class FailFastTest < Minitest::Test
    (1..100).to_a.shuffle.each do |i|
      define_method "test_#{i}" do
        if i == 42
          flunk
        else
        end
      end
    end
  end
end
