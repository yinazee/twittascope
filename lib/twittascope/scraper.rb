require 'open-uri'
require 'nokogiri'
require 'pry'

class Twittascope::Scraper

  @@url = "http://www.twittascope.com"


  def self.scrape_all_attr

    @doc = Nokogiri::HTML(open(@@url))
    @doc.search("ul.site-sign-list li a").collect do |url|
      horoscope = Twittascope::Horoscope.new

      horoscope.url = @@url + url["href"]
      anchor = Nokogiri::HTML(open(@@url + url["href"]))
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

      Twittascope::Horoscope.all << horoscope.save

      # binding.pry

      end
      end
    end
  end

  def self.create_hash
    self.scrape_all_attr.collect do |hash|
      Twittascope::Horoscope.all << hash
    end
  end
  # def separate(input)
  #   input = gets.to_i-1
  #   a = self.scrape_all_attr
  #   b = a.flatten.flatten
  #   b[input].headline =
  #
  # end


        # a = twittascope::scraper.scraper
        # b = a.flatten.flatten
        # b[1] should equal to taurus object
        # b[1].headline should equal to taurus headline


end #closes Scraper
