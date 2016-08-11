# Freelabster

Gem to send 3D files to https://www.freelabster.com/


## Installation

Add this line to your application's Gemfile:

```ruby
gem "freelabster"
```

And then execute:

    $ bundle


## Usage

Pass URLs to STL files and this will return the url to a cart where you can
redirect a user.

```ruby
cart = Freelabster::Cart.new(file_urls: ["http://example.com/file.stl"])
cart.url
# => "https://www.freelabster.com/dashboard/order/cart?token=f0a23e2…"
```


## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake` to run the specs and style checker.
You can also run `bin/console` for an interactive prompt that will allow you
to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, and then
run `bundle exec rake release`, which will create a git tag for the version,
push git commits and tags, and push the `.gem` file
to [rubygems.org](https://rubygems.org).


## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/sunny/freelabster. This project is intended to be a safe,
welcoming space for collaboration, and contributors are expected to adhere to
the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).

