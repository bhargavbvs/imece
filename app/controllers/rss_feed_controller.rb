class RssFeedController < ApplicationController

  require 'rss'
  require 'open-uri'

  include RssFeedHelper

  def get_news
    render json: get_feed, status: 200
  end
end
