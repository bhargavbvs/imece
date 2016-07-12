module RssFeedHelper
  def get_image_from_description description
    return nil if description.blank?
    while true do
      description = description[description.index('img')..-1]
      return nil if description.index('src').nil?
      if description.index('src') > description.index('>').to_i
        next 
      else
        start_index = description.index(34.chr)
        end_index = description.index(34.chr, start_index+1)
        return "https:#{description[start_index+1..end_index-1]}"
      end
    end
  end

  def get_feed
    url = 'https://news.google.com/news/section?cf=all&hl=en&ned=in&scoring=n&num=100&geo=bangalore&output=rss'
    title = nil
    results = []
    open(url) do |rss|
      feed = RSS::Parser.parse(rss)
      title = feed.channel.title
      feed.items.each do |item|
        image = get_image_from_description(item.description)
        if (image.present? || (20-results.size)==(feed.items.size-feed.items.find_index(item)))
          results << {
            "title" => item.title,
            "link" => item.link,
            "published_date" => item.pubDate,
            "guid" => item.guid.as_json,
            "image" => image
          }
        end
        break if (results.size==20)
      end
    end
    return {"title" => title, "feed" => results}
  end
end
