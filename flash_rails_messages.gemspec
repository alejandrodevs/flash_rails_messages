lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flash_rails_messages/version'

Gem::Specification.new do |spec|
  spec.name          = 'flash_rails_messages'
  spec.version       = FlashRailsMessages::VERSION
  spec.authors       = ['Alejandro Gutiérrez']
  spec.email         = ['alejandrodevs@gmail.com']
  spec.summary       = 'This gems provides an easy way to display flash rails messages'
  spec.description   = 'A simple helper to display flash rails messages'
  spec.homepage      = 'https://github.com/alejandrodevs/flash_rails_messages'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'appraisal', '~> 2.2'
  spec.add_development_dependency 'coveralls', '~> 0.8'

  spec.add_dependency 'rails', '>= 4.2'
end
