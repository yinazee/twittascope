require 'open-uri'
require 'nokogiri'
require 'pry'

class Twittascope::Scraper

  @@url = "http://www.twittascope.com"

  def self.scraper
    @doc = Nokogiri::HTML(open(@@url))
    @doc.search("ul.site-sign-list li a").collect do |url|
      horoscope = Twittascope::Horoscope.new

      horoscope.url = @@url + url["href"]
      anchor = Nokogiri::HTML(open(horoscope.url))
      horoscope.headline = anchor.search("h1").text
      horoscope.today = anchor.search(".dh-copy p").text

      #scrapes yesterday's horoscope reading
      anchor.search("ul.date-nav .yesterday").collect do |yes|
      yesterday_url = @@url + yes["href"]
      yes_doc = Nokogiri::HTML(open(yesterday_url))
      horoscope.yesterday = yes_doc.search(".dh-copy p").text

      #scrapes tomorrow's horoscope reading
      anchor.search("ul.date-nav .tomorrow").collect do |tom|
      tom_url = @@url + tom["href"]
      tom_doc = Nokogiri::HTML(open(tom_url))
      horoscope.tomorrow = tom_doc.search(".dh-copy p").text

      horoscope.save


      end
      end
    end
  end

end #closes Scraper
