class RssFeedController < ApplicationController
  require 'rss'
  require 'open-uri'
  def get_news
    url = 'https://news.google.com/news/section?cf=all&hl=en&ned=in&scoring=n&num=100&geo=bangalore&output=rss'
    title = nil
    results = []
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      title = feed.channel.title
      items = feed.items.first(20)
      items.each do |item|
        results << {
          "title" => item.title,
          "link" => item.link,
          "published_date" => item.pubDate,
          "guid" => item.guid.as_json
        }
      end
    end
    render json: {"title" => title, "feed" => results}, status: 200
  end
end
