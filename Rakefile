require "bundler/gem_tasks"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.test_files = FileList['tests/**/*_test.rb'] #my directory to tests is 'tests' you can change at you will
end
desc "Run tests"

task default: :test
