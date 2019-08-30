module FlashRailsMessages
  class Base
    # BOOTSTRAP FRAMEWORK
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
      content_tag :button, type: 'button', class: 'close', 'data-dismiss': 'alert' do
        content_tag(:span, '&times;'.html_safe, 'aria-hidden': 'true') +
        content_tag(:span, 'Close', class: 'sr-only')
      end
    end

    # def default_alert_classes
      # 'alert'
    # end

    def alert_type_classes
      {
        success: 'alert-success',
        notice: 'alert-success',
        alert: 'alert-danger',
        error: 'alert-danger',
      }
    end

    def custom_alert_classes
      if options.fetch(:dismissible, false)
        'alert-dismissible'
      end
    end
  end
end
