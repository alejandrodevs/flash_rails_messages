require './lib/flash_rails_messages'
require 'simplecov'

class MockedClass
  include ActionView::Helpers::FlashRailsMessagesHelper
end

SimpleCov.start do
  minimum_coverage 90
end
