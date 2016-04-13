# FlashRailsMessages
[![Build Status](https://travis-ci.org/alejandrodevs/flash_rails_messages.png?branch=master)](https://travis-ci.org/alejandrodevs/flash_rails_messages) [![Coverage Status](https://coveralls.io/repos/github/alejandrodevs/flash_rails_messages/badge.svg?branch=master)](https://coveralls.io/github/alejandrodevs/flash_rails_messages?branch=master)


This gem provides an easy and simple way to display flash rails messages.
This works with [Bootstrap](http://getbootstrap.com/) and [Zurb Foundation 3](http://foundation.zurb.com/) frameworks.


## Installation
Add this line to your application's Gemfile:
```ruby
gem 'flash_rails_messages'
```
Run the bundle command to install it.


### Bootstrap
To integrate **FlashRailsMessages** with [Bootstrap](http://getbootstrap.com/) run the next:
```console
rails generate flash_rails_messages:install --bootstrap
```
NOTE: Be sure that you added Bootstrap assets on your application.


### Zurb Foundation 3
To integrate **FlashRailsMessages** with [Zurb Foundation 3](http://foundation.zurb.com/) run the next:
```console
rails generate flash_rails_messages:install --foundation
```
NOTE: Be sure that you added Foundation assets on your application.


## Usage
You just need to add the line below in your layout:
```erb
<%= render_flash_messages %>
```


## Customize alert
Just update your **FlashRailsMessages** initializer according to your needs.


## Contributing
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/alejandrodevs/flash_rails_messages/trend.png)](https://bitdeli.com/free "Bitdeli Badge")

