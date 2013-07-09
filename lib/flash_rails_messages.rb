require "flash_rails_messages/version"

module ActionView
  module Helpers
    module FlashRailsMessages

    end
  end
end

if defined?(ActionView::Helpers)
  ActionView::Helpers.autoload :FlashRailsMessages
end
