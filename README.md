# SimpleScraper

All that remains of my first project.
 


## Installation
```markdown
Don't Install this. Don't follow these instructions. I'm going to polish this turd a bit more.
```

Add this line to your application's Gemfile:

```ruby
gem 'simple_scraper'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_scraper

## Usage

###Class Methods
Replace any accented characters in a given string with the unaccented variant, if that accent is produced on a long press on my keyboard.
```ruby
SimpleScraper.delocalize(String)
```
Removes any enclosing tags or new lines from a given string using pattern  `<a|b|etc.>|</a|b|etc.>|\n` 
```ruby
SimpleScraper.detag(String)
```

Performs `SimpleScraper.delocalize.detag`
```ruby
SimpleScraper.clean(String)
```




## Development

I'm working on cleaning this project up. If it turns out to be useful to you, I'll include the option of enabling you to help develop it. 

######This is but a shell of its former self. RIP.

## Contributing

Please do something better with your time

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
```ruby
#TODO: Learn what this licensing ACTUALLY entails...
```

## Code of Conduct

YOLO
