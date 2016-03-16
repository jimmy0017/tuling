# Tuling

[![Gem Version](https://badge.fury.io/rb/tuling.svg)](https://badge.fury.io/rb/tuling)

Tuling123 API Gem(Non-official)

## Installation

Add this line to your application's Gemfile:

    gem 'tuling'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bible_gateway

## Usage
	
	ENV['tuling123']= "YOUR_API_KEY" #Get it from http://www.tuling123.com
    tl = Tuling.new # Initial tuling gem
    tl.input("test","1") #first params is the text, second params is the user_id. 
    tl.input("test","1") # => {"code"=>100000, "text"=>"我不会说英语的啦，你还是说中文吧。"}
## Todo

* Please see issues for todo.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright

See [LICENSE](License.txt) for details.

