module FlashRailsMessages
  autoload :Base,    'flash_rails_messages/base'
  autoload :Helper,  'flash_rails_messages/helper'
  autoload :VERSION, 'flash_rails_messages/version'
end

ActiveSupport.on_load(:action_view) do
  include FlashRailsMessages::Helper
end
