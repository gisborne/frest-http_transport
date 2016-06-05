# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'frest/http_transport/version'

Gem::Specification.new do |spec|
  spec.name          = "frest-http_transport"
  spec.version       = Frest::HttpTransport::VERSION
  spec.authors       = ["Guyren Howe"]
  spec.email         = ["guyren@relevantlogic.com"]

  spec.summary       = %q{Publishes FREST functions via an HTTP transport.}
  spec.homepage      = "http://github.com/gisborne/frest-http_transport"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
