require "test_helper"
require "minitest/fail_fast"

Minitest.load(:fail_fast) if Minitest::VERSION.to_i >= 6

module Minitest
  class FailFastTest < Minitest::Test
    def test_sanity
      klass = Class.new(Minitest::Test) do
        i_suck_and_my_tests_are_order_dependent!

        def test_a
          assert true
        end

        def test_b
          raise "Error"
        end

        def test_c
          assert true
        end
      end
      output = StringIO.new
      options = { seed: 42 }
      reporter = Minitest::CompositeReporter.new
      statistics = Minitest::StatisticsReporter.new(output)
      fail_fast = Minitest::FailFastReporter.new(output)
      reporter << statistics
      reporter << fail_fast

      reporter.start

      begin
        if klass.respond_to?(:run_suite) # Minitest v6+
          klass.run_suite(reporter, options)
        else
          klass.run(reporter, options) # Minitest v5
        end
      rescue Interrupt
        # no-op
      end

      assert_equal 2, statistics.count
      assert_equal 1, statistics.assertions
    end
  end
end
