require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  @@url = "http://www.twittascope.com"

  def self.scrape_urls
    doc = Nokogiri::HTML(open(@@url))
   #=====Iterating only 0 to 12 because #13 is a duplicate of #12====#
      doc.search("ul.site-sign-list li a")[0..12].collect do |t|
      url = @@url + t["href"]
      end
    end

  def self.scrape_headline
    scrape_urls.collect do |site|
      title = Nokogiri::HTML(open(site))
      headline = title.search("h1").text
    end
  end

  def self.scrape_today(user_input)
    scrape_urls.collect do |site|
      title = Nokogiri::HTML(open(site))
      tod_copy = title.search(".dh-copy p").text
    end
  end

  def self.scrape_yesterday
    yesterdays = []
    scrape_urls.each do |site|
      title = Nokogiri::HTML(open(site))
        yesterday = title.search("ul.date-nav .yesterday").collect do |yes|
          yesterday_url = "http://www.twittascope.com" + yes["href"]

          yes_doc = Nokogiri::HTML(open(yesterday_url))
          yes_copy = yes_doc.search(".dh-copy p").text
          yesterdays << yes_copy
        end
    end
    yesterdays
  end

  def self.scrape_tomorrow
    tomorrows = []
    scrape_urls.each do |site|
      title = Nokogiri::HTML(open(site))
        tomorrow = title.search("ul.date-nav .tomorrow").collect do |tom|
          tomorrow_url = "http://www.twittascope.com" + tom["href"]

          tom_doc = Nokogiri::HTML(open(tomorrow_url))
          tom_copy = tom_doc.search(".dh-copy p").text
          tomorrows << tom_copy
        end
    end
    tomorrows
  end



end #closes Scraper
