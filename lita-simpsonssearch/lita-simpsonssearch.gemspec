Gem::Specification.new do |spec|
  spec.name          = 'lita-simpsonssearch'
  spec.version       = '0.1.0'
  spec.authors       = ['Lee Briggs']
  spec.email         = ['lee@leebriggs.co.uk']
  spec.description   = 'Search for an image from the Simpsons'
  spec.summary       = 'Search for a simpsons image from frinkiac.com'
  spec.homepage      = 'https://github.com/jaxxstorm/lita-simpsonssearch'
  spec.license       = 'MIT'
  spec.metadata      = { 'lita_plugin_type' => 'handler' }

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{/^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{/^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'lita', '>= 4.7'
  spec.add_runtime_dependency 'frinkiac', '~> 0.0.1'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.2'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rspec', '>= 3.0.0'
  spec.add_development_dependency 'simplecov', '~> 0.11.2'
  spec.add_development_dependency 'rubocop', '~> 0.23.0'
  spec.add_development_dependency 'coveralls'
end
