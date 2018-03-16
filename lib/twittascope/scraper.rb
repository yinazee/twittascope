require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  @@url = "http://www.twittascope.com"

  def self.scrape_urls
    urls = []
    doc = Nokogiri::HTML(open(@@url))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = @@url + t["href"]
        urls << url
      end
      urls
    end


  def self.scrape_headline
    headlines = []
    doc = Nokogiri::HTML(open(@@url))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = @@url + t["href"]

      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

        title = Nokogiri::HTML(open(url))
        headline = title.search("h1").text
        headlines << headline
        end
        headlines
      end


  def self.scrape_today
    todays = []
    doc = Nokogiri::HTML(open(@@url))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = @@url + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      title = Nokogiri::HTML(open(url))
      tod_copy = title.search(".dh-copy p").text
      todays << tod_copy
      # headlines.each_with_index do |sign, index|
      # puts "#{index+1}. #{sign}"
  end
  todays
end

  def self.scrape_yesterday
    yesterdays = []
    doc = Nokogiri::HTML(open(@@url))
    main = doc.search("ul.site-sign-list li a").each do |t|
    url = @@url + t["href"]

      title = Nokogiri::HTML(open(url))
        yesterday = title.search("ul.date-nav .yesterday").each do |yes|
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
    doc = Nokogiri::HTML(open(@@url))
    main = doc.search("ul.site-sign-list li a").each do |t|
    url = @@url + t["href"]

    title = Nokogiri::HTML(open(url))
     tomorrow = title.search("ul.date-nav .tomorrow").each do |tom|
      tomorrow_url = "http://www.twittascope.com" + tom["href"]

      tom_doc = Nokogiri::HTML(open(tomorrow_url))
      tom_copy = tom_doc.search(".dh-copy p").text
      tomorrows << tom_copy
      end
    end
    tomorrows
    binding.pry
  end


  # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
      # Horoscope.new(url, name)


end #closes Scraper
