module FlashRailsMessages
  module Helper

    # Returns flash rails messages that will be displayed in your DOM. Just
    # call this method from your html view.
    #
    #   <%= render_flash_messages %>
    #
    def render_flash_messages
      FlashRailsMessages::Base.new.render(flash)
    end

  end
end
