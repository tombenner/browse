$:.push File.expand_path('../lib', __FILE__)
require 'browse/version'

Gem::Specification.new do |s|
  s.name        = 'browse'
  s.version     = Browse::VERSION
  s.authors     = ['Tom Benner']
  s.email       = ['tombenner@gmail.com']
  s.homepage    = 'https://github.com/tombenner/browse'
  s.summary = s.description = 'Open Mechanize pages in a (human-readable) browser'

  s.files = Dir['lib/**/*'] + ['MIT-LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['spec/**/*']

  s.add_dependency 'mechanize'
  s.add_dependency 'activesupport'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
end
