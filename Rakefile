require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |test|
  test.libs << 'lib' << 'test'
  test.ruby_opts << "-rubygems"
  test.pattern = 'test/**/*_test.rb'
  test.verbose = true
end

task :console do
  exec "irb -r bs_wrapper -I ./lib"
end
