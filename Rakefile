require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

task :default => :spec

task :ci do
    sh 'cat spec/fixtures/raw_kiwi_compilation_fail.txt | xcpretty -f "`bin/xcpretty-actions-formatter`"' 
    sh 'cat spec/fixtures/raw_kiwi_fail.txt | xcpretty -f "`bin/xcpretty-actions-formatter`"' 
    sh 'cat spec/fixtures/raw_specta_fail.txt | xcpretty -f "`bin/xcpretty-actions-formatter`"' 
end
