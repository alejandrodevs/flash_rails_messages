module FlashRailsMessages
  module Helper
    def render_flash_messages(options = {})
      FlashRailsMessages::Base.new(options).render(flash)
    end
  end
end
