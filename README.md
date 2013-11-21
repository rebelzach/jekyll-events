# jekyll-events

Lets you create posts that represent future events. They're posts but
in the future! Great for schedules and calendars.

Basic Setup
-----------
Install the gem:

	[sudo] gem install jekyll-events

In a plugin file within your Jekyll project's `_plugins` directory:

	# _plugins/my-plugin.rb
	require "jekyll-events"

Bundler Setup
-------------
Using bundler to manage gems for your Jekyll project? (Which you
totally should, because its awesome.)  

Just add:

	gem "jekyll-events"

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

Only events dated in the future will be published, events in the past
are excluded. Remember, because its a statically generated site if you
want events to automatically expire you will have to do some crontab
scheduling or similar to autmatically republish your site.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
