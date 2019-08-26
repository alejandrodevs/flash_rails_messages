module FlashRailsMessages
  class Base
    include ActionView::Context
    include ActionView::Helpers::TagHelper

    attr_reader :options

    def initialize(options = {})
      @options = options
    end

    def render(flash)
      flash = Hash[flash].symbolize_keys
      flash.map { |message| alert_element(*message) }.join.html_safe
    end

    private

    def alert_element(type, message)
      content_tag :div, alert_options(type) do
        content = ActiveSupport::SafeBuffer.new
        content += close_element if options.fetch(:dismissible, false)
        content += message.html_safe
        content
      end
    end

    def close_element
      content_tag :a, class: 'close', href: '#' do
        '&times;'.html_safe
      end
    end

    def alert_options(type)
      options.slice(:id, :class)
        .merge(class: alert_classes(type))
    end

    def alert_classes(type)
      [
        default_alert_classes,
        alert_type_classes[type],
        custom_alert_classes,
        options[:class]
      ].compact.join(' ').strip
    end

    def default_alert_classes
      'alert'
    end

    def alert_type_classes
      {}
    end

    def custom_alert_classes
    end
  end
end
