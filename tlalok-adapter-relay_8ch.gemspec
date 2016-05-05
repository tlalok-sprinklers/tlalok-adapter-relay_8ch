# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tlalok/adapter/relay_8ch/version'

Gem::Specification.new do |spec|
  spec.name          = "tlalok-adapter-relay_8ch"
  spec.version       = Tlalok::Adapter::Relay8ch::VERSION
  spec.authors       = ["defektive"]
  spec.email         = ["defektive@protonmail.com"]

  spec.summary       = %q{gem for controlling an 8 channel relay}
  spec.homepage      = "https://github.com/tlalok-sprinklers/tlalok-adapter-relay_8ch"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
