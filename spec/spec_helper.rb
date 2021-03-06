require 'coveralls'
Coveralls.wear!

require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
   SimpleCov::Formatter::HTMLFormatter,
   Coveralls::SimpleCov::Formatter]
)
SimpleCov.start do
  add_filter 'spec'
  add_filter 'example'
  add_filter 'lib/atom_ruby/tracker.rb'
  add_filter 'lib/atom_ruby/event_task_pool.rb'
end
RSpec.configure do |config|
  config.warnings = true
end