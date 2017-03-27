# Cenit Config

Provides a dynamic configurable module that can be extended by any other.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cenit-config'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cenit-config

## Usage

Make your module or class to extends `Cenit::Config`:

```ruby
module MyApp
    extend Cenit::Config
end
```

Configure your options:

```ruby
MyApp.config do
    number 1
    color 'blue'
end
```

Use your configuration options anywhere

```ruby
MyApp.number  # => 1
MyApp.color  # => 'blue'
```

You can define default configuration options

```ruby
module MyApp
    extend Cenit::Config
    
    default_options number: 1,
                    color: 'blue'
end
```

and configure an option anytime and anywhere

```ruby
MyApp.default_namespace = ''
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/cenit-io/cenit-config/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
