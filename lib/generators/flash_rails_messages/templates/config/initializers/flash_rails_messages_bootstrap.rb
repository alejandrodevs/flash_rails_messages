module FlashRailsMessages
  class Base
    # BOOTSTRAP FRAMEWORK
    # =========================================

    def alert_element(type, message)
      content_tag :div, class: alert_classes(type), role: 'alert' do
        close_element + message.html_safe
      end
    end

    def close_element
      content_tag :button, type: 'button', class: 'close', :'data-dismiss' => 'alert' do
        content_tag(:span, '&times;'.html_safe, :'aria-hidden' => 'true') +
        content_tag(:span, 'Close', class: 'sr-only')
      end
    end

    def default_alert_class
      'alert'
    end

    def alert_type_classes
      {
        success: 'alert-success',
        notice: 'alert-success',
        alert: 'alert-danger',
        error: 'alert-danger',
      }
    end

    def custom_alert_class
      'alert-dismissible'
    end
  end
end
