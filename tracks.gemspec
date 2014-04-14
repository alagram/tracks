# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tracks/version'

Gem::Specification.new do |spec|
  spec.name          = "tracks"
  spec.version       = Tracks::VERSION
  spec.authors       = ["Albert Agram"]
  spec.email         = ["albert.agram@gmail.com"]
  spec.description   = %q{A Rack-based Web Framework, but with extra awesome.}
  spec.summary       = %q{A Rack-based Web Framework}
  spec.homepage      = "http://alagram.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "rack"
end
