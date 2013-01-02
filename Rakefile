require "bundler/gem_tasks"
require 'rake/clean'
require 'rake/testtask'
require 'yard'

Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList['test/*_test.rb']
  t.verbose = true
end

YARD::Rake::YardocTask.new do |t|
  t.files   = ['lib/**/*.rb']
  t.options
end

CLEAN.include %w(coverage doc pkg tmp .yardoc)

desc "Run tests"
task :default => :test


