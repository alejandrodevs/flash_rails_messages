module FlashRailsMessages
  class Base
    include ActionView::Helpers::TagHelper
    include ActionView::Context

    def render(flash)
      flash = Hash[flash].symbolize_keys
      flash.map { |message| alert_element(*message) }.join.html_safe
    end

    private

    def alert_element(type, message)
      content_tag :div, class: alert_classes(type) do
        close_element + message.html_safe
      end
    end

    def close_element
      content_tag :span, class: 'close', :'data-dismiss' => 'alert' do
        '&times;'.html_safe
      end
    end

    def alert_classes(type)
      "#{default_alert_class} #{alert_type_classes[type]}"
    end

    def default_alert_class
      'alert'
    end

    def alert_type_classes
      {
        success: 'alert-success',
        notice: 'alert-info',
        alert: 'alert-error',
        error: 'alert-error',
      }
    end
  end
end
