module FlashRailsMessages
  module Helper
    def render_flash_messages
      FlashRailsMessages::Base.new.render(flash)
    end
  end
end
