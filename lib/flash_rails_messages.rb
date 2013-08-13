require "flash_rails_messages/version"

module ActionView
  module Helpers
    module FlashRailsMessagesHelper

      def render_flash_messages
        flash.each do |type, msg|
          flash_messages << alert_element(type, msg) if msg
          flash[type] = nil
        end

        flash_messages.html_safe
      end

      private

      def alert_element type, msg
        content_tag(:div, close_element + msg.html_safe, :class => alert_classes(type))
      end

      def close_element
        content_tag(:span, "&times;".html_safe, :class => "close", :"data-dismiss" => "alert")
      end

      def alert_classes type
        "alert #{default_class(type)} alert-#{type}"
      end

      def default_class type
        case type
        when :success then "alert-success"
        when :notice  then "alert-info"
        when :alert   then "alert-error"
        end
      end

      def flash_messages
        @flash_messages ||= ""
      end

    end
  end
end

if defined?(ActionView::Helpers)
  ActionView::Helpers.send(:include, ActionView::Helpers::FlashRailsMessagesHelper)
end
