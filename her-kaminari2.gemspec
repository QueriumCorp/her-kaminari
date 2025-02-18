# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'her/kaminari/version'

Gem::Specification.new do |spec|
  spec.name          = "her-kaminari2"
  spec.version       = Her::Kaminari2::VERSION
  spec.authors       = ["Daniel Blanco Rojas, Artur Hebda"]
  spec.email         = ["daniel.blancorojas@gmail.com"]
  spec.summary       = %q{Kaminari pagination for Her models.}
  spec.description   = %q{Makes Her aware of APIs that return pagination headers.}
  spec.homepage      = "https://github.com/DanielBlanco/her-kaminari"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'her', '~> 0.7.2', '>= 0.7.2'
  spec.add_runtime_dependency 'kaminari', '~> 1.1.1', '>= 1.1.1'

  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest', '~> 5.0'
  spec.add_development_dependency 'pry', '~> 0.10.1', '>= 0.10.1'
  spec.add_development_dependency 'guard', '~> 2.6.1', '>= 2.6.1'
  spec.add_development_dependency 'guard-minitest', '~> 2.3.2', '>= 2.3.2'
  spec.add_development_dependency 'grape', '~> 0.9.0', '>= 0.9.0' # <= Just to shut up kaminari warning
end
