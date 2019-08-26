module FlashRailsMessages
  class Base
    # ZURB FOUNDATION FRAMEWORK
    # =========================================

    def alert_element(type, message)
      content_tag :div, class: alert_classes(type), 'data-alert': '' do
        close_element + message.html_safe
      end
    end

    #def close_element
      #content_tag :a, class: 'close', href: '#' do
        #'&times;'.html_safe
      #end
    #end

    def default_alert_classes
      'alert-box'
    end

    def alert_type_classes
      {
        success: 'success',
        notice: 'info',
        alert: 'alert',
        error: 'alert',
      }
    end

    #def custom_alert_classes
      #Add custom alert classes as a string
    #end
  end
end
