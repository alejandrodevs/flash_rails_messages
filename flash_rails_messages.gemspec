# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flash_rails_messages/version'

Gem::Specification.new do |spec|
  spec.name          = 'flash_rails_messages'
  spec.version       = FlashRailsMessages::VERSION
  spec.authors       = ['Alejandro Gutiérrez']
  spec.email         = ['alejandrodevs@gmail.com']
  spec.description   = 'A simple helper to display flash rails messages'
  spec.summary       = 'This gems provides an easy way to display flash rails messages'
  spec.homepage      = 'https://github.com/alejandrogutierrez/flash_rails_messages'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 2.14.0'
  spec.add_development_dependency 'simplecov', '~> 0.7.1'
end
