require "test_helper"
require "minitest/fail_fast"

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
