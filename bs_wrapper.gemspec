# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bs_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "bs_wrapper"
  spec.version       = BsWrapper::VERSION
  spec.authors       = ["Chandan Kumar"]
  spec.email         = ["chandan.jhun@gmail.com"]
  spec.summary       = %q{This is a wrapper for BrowserStack REST API}
  spec.description   = %q{This is a wrapper for BrowserStack REST API}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.version       = BsWrapper::VERSION

  spec.add_dependency 'curb'
  spec.add_dependency 'json'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
