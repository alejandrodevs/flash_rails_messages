# FlashRailsMessages
[![Build Status](https://travis-ci.com/alejandrodevs/flash_rails_messages.svg?branch=master)](https://travis-ci.org/alejandrodevs/flash_rails_messages) [![Coverage Status](https://coveralls.io/repos/github/alejandrodevs/flash_rails_messages/badge.svg?branch=master)](https://coveralls.io/github/alejandrodevs/flash_rails_messages?branch=master)

This gem provides an easy and simple way to display flash rails messages.
This works with [Bootstrap](http://getbootstrap.com/) and [Zurb Foundation 3](http://foundation.zurb.com/) frameworks.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'flash_rails_messages'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install flash_rails_messages

### Bootstrap 4+

To integrate **FlashRailsMessages** with [Bootstrap](http://getbootstrap.com/) run the next:

```console
rails generate flash_rails_messages:install --bootstrap
```

NOTE: Be sure that you added Bootstrap to your application.


### Zurb Foundation 6+

To integrate **FlashRailsMessages** with [Zurb Foundation 3](http://foundation.zurb.com/) run the next:

```console
rails generate flash_rails_messages:install --foundation
```

NOTE: Be sure that you added Foundation to your application.

## Usage

You just need to add the line below in your layout:

```erb
<%= render_flash_messages %>
```

### Dismissible alerts

```erb
<%= render_flash_messages dismissible: true %>
```

### Passing other options

```erb
<%= render_flash_messages dismissible: true, id: 'my-alert', class: 'custom-class' %>
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/alejandrodevs/flash_rails_messages. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FlashRailsMessages project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/alejandrodevs/flash_rails_messages/blob/master/CODE_OF_CONDUCT.md).
