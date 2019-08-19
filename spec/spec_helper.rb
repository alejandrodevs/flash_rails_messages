require 'coveralls'
Coveralls.wear!

require 'action_view'
require 'bundler/setup'
require 'flash_rails_messages'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
