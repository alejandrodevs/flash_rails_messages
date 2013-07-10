# FlashRailsMessages[![Build Status](https://travis-ci.org/alejandrogutierrez/flash_rails_messages.png?branch=master)](https://travis-ci.org/alejandrogutierrez/flash_rails_messages)

This gem provides an easy and simple way to display flash messages to your users to inform them that an action has or hasn't taken place. It's using the bootstrap framework.

## Installation

Add this line to your application's Gemfile:

    gem 'flash_rails_messages'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flash_rails_messages

## Usage

You only need to add this line wherever you want to display the messages:

    <%= render_flash_messages %>

You can add the line above in your html in multiple places.


The flash messages are displayed according to the flash type.

- success = green alert
- notice = blue alert
- alert = red alert

**By default shows a yellow alert.**

*NOTE:*
In next versions styles will be customizable.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
