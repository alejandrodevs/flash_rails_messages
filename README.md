# FlashRailsMessages[![Build Status](https://travis-ci.org/alejandrogutierrez/flash_rails_messages.png?branch=master)](https://travis-ci.org/alejandrogutierrez/flash_rails_messages)

This gem provides an easy and simple way to display flash messages to your users to inform them that an action has or hasn't taken place. It's using the
[bootstrap](http://twitter.github.io/bootstrap)
framework.

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


The flash messages are displayed according to the flash type. By default shows a yellow alert.

**success**
- Shows a green alert

**notice**
- Shows a blue alert

**alert**
- Shows a red alert

## Customize alerts

By the way, the alerts are customizable. They will have a specific class according to the flash key. Example...

    flash[:whatever] = "Some flash rails message"

Will generate a html class in the alert wrapper like this `alert-whatever` to customize the css style.

## Adding HTML elements

The alerts that will be generated can include html elements. You just add html elements in the flash message.
Example...

    flash[:success] = "<strong>This text will be bold</strong> and this one will be normal"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
