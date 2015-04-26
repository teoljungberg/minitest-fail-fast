# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "minitest-fail-fast"
  spec.version       = "0.0.1"
  spec.authors       = ["Teo Ljungberg"]
  spec.email         = ["teo@teoljungberg.com"]

  spec.summary       = %q{Fail and exit as soon as a test fails}
  spec.description   = %q{Reimplements RSpec's "fail fast" feature for minitest}
  spec.homepage      = "https://github.com/teoljungberg/minitest-fail-fast"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "minitest", "~> 5"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
