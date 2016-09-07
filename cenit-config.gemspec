# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cenit/config/version'

Gem::Specification.new do |spec|
  spec.name          = 'cenit-config'
  spec.version       = Cenit::Config::VERSION
  spec.authors       = ['Maikel Arcia']
  spec.email         = ['macarci@gmail.com']

  spec.summary       = %q{A dynamic configurable module.}
  spec.homepage      = 'https://cenit.io'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
end
