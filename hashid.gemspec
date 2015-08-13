# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hashid/version'

Gem::Specification.new do |spec|
  spec.name          = "hashid"
  spec.version       = Hashid::VERSION
  spec.authors       = ["Alice Kaerast"]
  spec.email         = ["alice@kaerast.info"]
  spec.description   = %q{identify the different types of hashes used to encrypt data}
  spec.summary       = %q{hashID supports the identification of over 130 unique hash types using regular expressions}
  spec.homepage      = "https://github.com/kaerast/hashID"
  spec.license       = "GPL v3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end
