module FlashRailsMessages
  autoload :Helper,  'flash_rails_messages/helper'
  autoload :VERSION, 'flash_rails_messages/version'
end

if defined?(ActionView::Helpers)
  ActionView::Helpers.send(:include, FlashRailsMessages::Helper)
end
