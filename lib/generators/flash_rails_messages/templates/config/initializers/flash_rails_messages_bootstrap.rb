module FlashRailsMessages
  class Base
    # BOOTSTRAP FRAMEWORK
    # =========================================

    #def alert_element(type, message)
      #content_tag :div, class: alert_classes(type) do
        #close_element + message.html_safe
      #end
    #end

    def close_element
      content_tag :span, class: 'close', :'data-dismiss' => 'alert' do
        '&times;'.html_safe
      end
    end

    #def default_alert_class
      #'alert'
    #end

    def alert_type_classes
      {
        success: 'alert-success',
        notice: 'alert-info',
        alert: 'alert-error',
        error: 'alert-error',
      }
    end

    #def custom_alert_class
      #Add custom alert classes as a string
    #end
  end
end
