# SimpleScraper

A few useful methods to be used on strings. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_scraper

## Usage

```ruby
SimpleScraper.delocalize(string)
```
Returns string with all unicode localization characters replaced by standard letters. Features all characters you'll find by long-pressing a Mac keyboard, and retains capitalization.

```ruby
SimpleScraper.detag(string)
```
Removes attribute tags, and newline characters.

```ruby
SimpleScraper.clean(string)
```
Incorporates both delocalize, and detag methods.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[Ethereal-Acid]/simple_scraper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SimpleScraper project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/simple_scraper/blob/master/CODE_OF_CONDUCT.md).
