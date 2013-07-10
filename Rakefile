require "bundler/gem_tasks"

namespace :rspec do
  desc "Running all tests"
  task :all do
    system("rspec")
  end
end

task default: ['rspec:all']
