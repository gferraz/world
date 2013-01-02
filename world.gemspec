
require 'base64'

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'world/version'

Gem::Specification.new do |s|
  s.name        = "world"
  s.homepage    = "http://github.com/gferraz/world"
  s.summary     = "World Data: Countries, Currencieslibrary (NOT READY FOR USE YET!)"
  s.description = "Provides a small set of classes to Country realated data"

  s.version     = World::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Gilson Ferraz"]
  s.email       = Base64.decode64("Z2lsc29uQGNlc2FyLmV0Yy5icg==\n")

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test}/*`.split("\n")

  s.required_ruby_version = '>= 1.9'
  s.required_rubygems_version = ">= 1.3.6"

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'redcarpet'
  s.add_development_dependency 'yard'

end
