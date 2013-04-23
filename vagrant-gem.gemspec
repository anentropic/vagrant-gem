# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-gem/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-gem"
  spec.version       = VagrantGemPlugin::VERSION
  spec.authors       = ["Anentropic"]
  spec.email         = ["ego@anentropic.com"]
  spec.description   = %q{Vagrant plugin to allow you to install gems into the Vagrant gem environment}
  spec.summary       = %q{Vagrant plugin to allow you to install gems into the Vagrant gem environment}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
