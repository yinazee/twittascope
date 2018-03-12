require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.scrape_headlines
    headlines = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
      main = doc.search("ul.site-sign-list").each do |t|
        url = "http://www.twittascope.com" + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

        title = Nokogiri::HTML(open(url))
        todays = []
        headline = title.search("h1").text
        headlines << headline
        end
  end

  def self.scrape_today
    headlines = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
      main = doc.search("ul.site-sign-list").each do |t|
        url = "http://www.twittascope.com" + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      title = Nokogiri::HTML(open(url))
      todays = []
      headline = title.search("h1").text
      headlines << headline
      tod_copy = title.search(".dh-copy p").text
      todays << tod_copy
      # headlines.each_with_index do |sign, index|
      # puts "#{index+1}. #{sign}"
  end
end

  def self.scrape_yesterday
    yesterdays = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    main = doc.search("ul.site-sign-list").each do |t|
    url = "http://www.twittascope.com" + t["href"]

      title = Nokogiri::HTML(open(url))
        yesterday = title.search("ul.date-nav .yesterday").each do |yes|
        yesterday_url = "http://www.twittascope.com" + yes["href"]

        yes_doc = Nokogiri::HTML(open(yesterday_url))
          yes_copy = yes_doc.search(".dh-copy p").text
          yesterdays << yes_copy
      end
    end
  end

  def self.scrape_tomorrow
    tomorrows = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    main = doc.search("ul.site-sign-list").each do |t|
    url = "http://www.twittascope.com" + t["href"]

    title = Nokogiri::HTML(open(url))
     tomorrow = title.search("ul.date-nav .tomorrow").each do |tom|
      tomorrow_url = "http://www.twittascope.com" + tom["href"]

      tom_doc = Nokogiri::HTML(open(tomorrow_url))
      tom_copy = tom_doc.search(".dh-copy p").text
      tomorrows << tom_copy
      binding.pry
      end
    end
  end


  # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
      # Horoscope.new(url, name)


end #closes Scraper
