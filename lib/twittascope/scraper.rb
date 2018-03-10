require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.load_headlines
    headlines = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = "http://www.twittascope.com" + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      title = Nokogiri::HTML(open(url))
      todays = []
      headline = title.search("h1").text
      headlines << headline

  end

  def self.load_today
    headlines = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = "http://www.twittascope.com" + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      title = Nokogiri::HTML(open(url))
      todays = []
      headline = title.search("h1").text
      headlines << headline
      tod_copy = title.search(".dh-copy p").text
      todays << tod_copy
      binding.pry
      headlines.each_with_index do |sign, index|
      puts "#{index+1}. #{sign}"
    end
  end
end

  def self.load_yesterday
    yesterdays = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    main = doc.search("ul.site-sign-list li a").each do |t|
    url = "http://www.twittascope.com" + t["href"]

    title = Nokogiri::HTML(open(url))
     yesterday = title.search("ul.date-nav .yesterday").each do |yes|
      yesterday_url = "http://www.twittascope.com" + yes["href"]

      yes_doc = Nokogiri::HTML(open(yesterday_url))
      yes_copy = yes_doc.search(".dh-copy p").text
      binding.pry
      yesterdays << yes_copy

      end
    end
  end

  def self.load_tomorrow
    tomorrows = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    main = doc.search("ul.site-sign-list li a").each do |t|
    url = "http://www.twittascope.com" + t["href"]

    title = Nokogiri::HTML(open(url))
     tomorrow = title.search("ul.date-nav .tomorrow").each do |tom|
      tomorrow_url = "http://www.twittascope.com" + tom["href"]

      tom_doc = Nokogiri::HTML(open(tomorrow_url))
      tom_copy = tom_doc.search(".dh-copy p").text
      binding.pry
      tomorrows << tom_copy

      end
    end
  end


  # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
      # Horoscope.new(url, name)


end #closes Scraper
