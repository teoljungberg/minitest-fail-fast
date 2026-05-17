module Minitest
  def self.plugin_fail_fast_options opts, _options
    opts.on "-f", "--fail-fast", "Halt running the test suite when a test fails" do
      Minitest::FailFast.fail_fast!
    end
  end

  def self.plugin_fail_fast_init options
    if Minitest::FailFast.fail_fast?
      io = options.fetch(:io, $stdout)
      self.reporter.reporters << FailFastReporter.new(io, options)
    end
  end

  class FailFastReporter < Reporter
    def record result
      if result.failures.reject { |failure| failure.kind_of?(Minitest::Skip) }.any?
        io.puts
        raise Interrupt
      else
        super
      end
    end
  end
end
