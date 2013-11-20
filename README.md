# jekyll-events

Lets you create posts that represent future events. They're post's but in the future!

Basic Setup
-----------
Install the gem:

	[sudo] gem install jekyll-events

In a plugin file within your Jekyll project's `_plugins` directory:

	# _plugins/my-plugin.rb
	require "jekyll-sass"

Bundler Setup
-------------
Using bundler to manage gems for your Jekyll project? Just add

	gem "jekyll-sass"

to your gemfile and create the following plugin in your projects `_plugins`
directory.  This will automatically require all of the gems specified in your Gemfile.

	# _plugins/bundler.rb
	require "rubygems"
	require "bundler/setup"
	Bundler.require(:default)

## Usage

Anywhere you need some future dated events create an `_events`
directory. Add any [properly formatted files](http://jekyllrb.com/docs/posts/) inside this directory just
like you would with posts.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
