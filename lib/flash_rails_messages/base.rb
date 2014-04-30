module FlashRailsMessages
  class Base
    include ActionView::Helpers::TagHelper

    def render flash
      flash_messages = ''

      flash.each do |type, msg|
        flash_messages << alert_element(type, msg) if msg
        flash[type] = nil
      end

      flash_messages.html_safe
    end

    private

    def alert_element type, msg
      content_tag(:div, close_element + msg.html_safe, class: alert_classes(type))
    end

    def close_element
      content_tag(:span, '&times;'.html_safe, class: 'close', :"data-dismiss" => 'alert')
    end

    def alert_classes type
      "alert #{default_class(type)} alert-#{type}"
    end

    def default_class type
      case type
      when :success       then 'alert-success'
      when :notice        then 'alert-info'
      when :alert, :error then 'alert-error'
      end
    end
  end
end
