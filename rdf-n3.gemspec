#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version               = File.read('VERSION').chomp
  gem.date                  = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name                  = %q{rdf-n3}
  gem.homepage              = %q{http://ruby-rdf.github.com/rdf-n3}
  gem.license               = 'Unlicense'
  gem.summary               = %q{Notation3 reader/writer for RDF.rb.}
  gem.description           = %q{RDF::N3 is an Notation-3 reader/writer for the RDF.rb library suite.}
  gem.rubyforge_project     = 'rdf-n3'

  gem.authors               = %w(Gregg Kellogg)
  gem.email                 = 'public-rdf-ruby@w3.org'

  gem.platform              = Gem::Platform::RUBY
  gem.files                 = %w(README.md History.markdown AUTHORS VERSION UNLICENSE) + Dir.glob('lib/**/*.rb')
  gem.require_paths         = %w(lib)
  gem.has_rdoc              = false

  gem.required_ruby_version = '>= 2.2.2'
  gem.requirements          = []

  gem.add_dependency             'rdf',             '~> 2.0'
  gem.add_development_dependency 'open-uri-cached', '~> 0.0', '>= 0.0.5'
  gem.add_development_dependency 'json-ld',         '~> 2.0'
  gem.add_development_dependency 'rspec',           '~> 3.4'
  gem.add_development_dependency 'rspec-its',       '~> 1.2'
  gem.add_development_dependency 'rdf-spec',        '~> 2.0'
  gem.add_development_dependency 'rdf-isomorphic',  '~> 2.0'
  gem.add_development_dependency 'yard' ,           '~> 0.8'

  gem.post_install_message  = nil
end

