# Byar

Byar's approximation calculator in Ruby. Useful when working with (H)SMR mortality models used in hospitals worldwide.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'byar'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install byar

## Usage

Use `Byar.lower(observed, expected)` and `Byar.upper(observed, expected)` to get 95% Byar confidence intervals.

Other features:

* Call `Byar.new` to instantiate an object
* Change the `z_value` used (defaults to 1.96, which corresponds to 95% confidence interval)

Please note that 1 is used as reference point for cases where `observed` == `expected` (not 100).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/florish/byar. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

Byar is released under the [MIT License](./LICENSE).

## Code of Conduct

Everyone interacting in the Byar project’s codebases, issue trackers, and related communication channels is expected to follow the [code of conduct](./CODE_OF_CONDUCT.md).
