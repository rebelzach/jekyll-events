require "jekyll-events/version"

module Jekyll
  module Events
    class Event < Post
      def containing_dir(source, dir)
        return File.join(source, dir, '_events')
      end

      def relative_path
        File.join(@dir, '_events', @name)
      end
    end

    class EventGenerator < Generator
      safe true

      def generate(site)
        recursively_read_directories(site)
      end

      def recursively_read_directories(site, dir = '')
        base = File.join(site.source, dir)
        entries = Dir.chdir(base) { site.filter_entries(Dir.entries('.')) }

        read_events(site, dir)
        site.posts.sort!

        entries.each do |f|
          f_abs = File.join(base, f)
          if File.directory?(f_abs)
            f_rel = File.join(dir, f)
            recursively_read_directories(site, f_rel) unless site.dest.sub(/\/$/, '') == f_abs
          end
        end
      end

      def read_events(site, dir)
        entries = site.get_entries(dir, '_events')
        entries.each do |f|
          if Post.valid?(f)
            event = Event.new(site, site.source, dir, f)
            if event.published && end_date(event).to_i >= site.time.to_i
              site.aggregate_post_info(event)
            end
          end
        end
      end

      def end_date(event)
        if event.data.key?('end_date')
          event_end_date = Time.parse(event.data['end_date'].to_s)
        else
          event_end_date = event.date
        end
        event_end_date
      end
    end
  end
end

