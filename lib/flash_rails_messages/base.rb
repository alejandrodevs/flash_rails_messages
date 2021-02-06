module FlashRailsMessages
  class Base
    TYPES = %i[
      notice
      success
      alert
      error
    ].freeze

    include ActionView::Context
    include ActionView::Helpers::TagHelper

    attr_reader :options

    def initialize(options = {})
      @options = options
    end

    def render(flash)
      messages(flash).map do |message|
        alert_element(*message)
      end.join.html_safe
    end

    private

    def messages(flash)
      Hash[flash]
        .symbolize_keys
        .keep_if { |key, _| TYPES.include?(key) }
    end

    def alert_element(type, message)
      return unless message.respond_to?(:html_safe)

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
      default_alert_options
        .merge(options.except(:dismissible))
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

    def default_alert_options
      {}
    end

    def default_alert_classes
      'alert'
    end

    def alert_type_classes
      {}
    end

    def custom_alert_classes; end
  end
end
