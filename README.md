# SimpleTokenParser

Given a string like the following:

```
"hello, world" they said
```

simple_token_parser will return ["hello, world", "they", "said"]

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_token_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_token_parser

## Usage

You might find it convenient to include this in String:

```ruby
class String
  include SimpleTokenParser
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/simple_token_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
