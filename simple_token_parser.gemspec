# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_token_parser/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_token_parser"
  spec.version       = SimpleTokenParser::VERSION
  spec.authors       = ["Conan Dalton"]
  spec.email         = ["conan@conandalton.net"]
  spec.description   = %q{ simple token parser                                           }
  spec.summary       = %q{ works like String#split, but keeping quoted segments together }
  spec.homepage      = "http://github.com/conanite/simple_token_parser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rspec_numbering_formatter'
end
