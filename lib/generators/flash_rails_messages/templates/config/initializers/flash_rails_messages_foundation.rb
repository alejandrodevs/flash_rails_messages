module FlashRailsMessages
  class Base
    # ZURB FOUNDATION FRAMEWORK
    # =========================================

    # def alert_element(type, message)
      # content_tag :div, alert_options(type) do
        # content = ActiveSupport::SafeBuffer.new
        # content += close_element if options.fetch(:dismissible, false)
        # content += message.html_safe
        # content
      # end
    # end

    def close_element
      content_tag :button, type: 'button', class: 'close-button', 'data-close': '' do
        content_tag(:span, '&times;'.html_safe, 'aria-hidden': 'true')
      end
    end

    def default_alert_options
      options.fetch(:dismissible, false) ?
        { 'data-closable': '' } : {}
    end

    def default_alert_classes
      'callout'
    end

    def alert_type_classes
      {
        success: 'success',
        notice: 'success',
        alert: 'alert',
        error: 'alert',
      }
    end

    # def custom_alert_classes
      # Add custom alert classes as a string
    # end
  end
end
