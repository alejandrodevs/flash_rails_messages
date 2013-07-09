require "flash_rails_messages/version"

module ActionView
  module Helpers
    module FlashRailsMessagesHelper

      FLASH_TYPES = [:notice, :warning, :alert]

      def render_messages
        FLASH_TYPES.each do |type|
          flash_messages << alert_element(type) if flash[type]
          clean_flash_message(type)
        end

        flash_messages.html_safe
      end

      private

      def clean_flash_message type
        flash[type] = nil
      end

      def alert_element type
        content_tag(:div, close_element + flash[type], :class => alert_classes(type))
      end

      def close_element
        content_tag :span, "&times;".html_safe, :class => "close", :"data-dismiss" => "alert"
      end

      def alert_classes type
        case type
        when :notice  then "alert alert-success"
        when :warning then "alert alert-warning"
        when :alert   then "alert alert-error"
        end
      end

      def flash_messages
        @flash_messages ||= ""
      end

    end
  end
end

if defined?(ActionView::Helpers)
  ActionView::Helpers.autoload :FlashRailsMessagesHelper
  ActionView::Helpers.send(:include, ActionView::Helpers::FlashRailsMessagesHelper)
end
