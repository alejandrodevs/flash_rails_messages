module FlashRailsMessages
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc 'FlashRailsMessages initializer'
      source_root File.expand_path('../templates', __FILE__)
      class_option :bootstrap, type: :boolean, desc: 'Use Bootstrap in flash alerts.'
      class_option :foundation, type: :boolean, desc: 'Use Foundation in flash alerts.'

      def install_info
        return if options.bootstrap? || options.foundation?
        puts 'FlashRailsMessages supports Bootstrap and Zurb Foundation 3. If you want '\
          'a configuration that is compatible with one of these frameworks, then please ' \
          're-run this generator with --bootstrap or --foundation as an option.'
      end

      def install_initializer
        if options.bootstrap?
          template 'config/initializers/flash_rails_messages_bootstrap.rb'
        elsif options.foundation?
          template 'config/initializers/flash_rails_messages_foundation.rb'
        end
      end
    end
  end
end
