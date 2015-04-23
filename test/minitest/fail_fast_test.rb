require "test_helper"
require "minitest/fail_fast"

module Minitest
  class FailFastTest < Minitest::Test
    def test_sanity
      assert_equal 7, 3 + 4
    end
  end
end
