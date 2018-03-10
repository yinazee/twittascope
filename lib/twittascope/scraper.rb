require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.load_today
    headlines = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
      main = doc.search("ul.site-sign-list li a").each do |t|
        url = "http://www.twittascope.com" + t["href"]
      # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      title = Nokogiri::HTML(open(url))
      headline = title.search("h1").text
      today = title.search(".dh-copy p").text
      tomorrow = title.search("ul.date-nav .tomorrow").attribute("href")
      yesterday = title.search("ul.date-nav .yesterday").attribute("href")

      headlines << headline

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
      yesterday_copy = yes_doc.search(".dh-copy p").text
      binding.pry

      end
    end
  end

  # def self.load_tomorrow
  #   headlines = []
  #   doc = Nokogiri::HTML(open("http://www.twittascope.com"))
  #   main = doc.search("ul.site-sign-list li a").each do |t|
  #   url = "http://www.twittascope.com" + t["href"]
  #
  #
  #   title = Nokogiri::HTML(open(url))
  #
  # end
  #
  #
  # def self.load_urls
  #   doc = Nokogiri::HTML(open("http://www.twittascope.com"))
  #
  #   urls = []
  #   signs = doc.search("ul.site-sign-list li a").text
  #   # name = "http://www.twittascope.com" + item["href"].gsub("http://www.twittascope.com/?sign=", "").capitalize #this iterates all the urls
  #   urls << signs
  #   urls.each_with_index do |name, index|
  #     puts "#{name} - #{site}"
  #       # horoscopes << {name: sign_name, url: sign_url} - student scraper
  #       # try following: https://github.com/yinazee/ruby-music-library-cli-v-000/blob/solution/lib/artist.rb
  #   end
  # end

  # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
      # Horoscope.new(url, name)


  # def self.load_page(instance)
  #
  #   instance.description = whatevr you scrape here
  #
  # end


    # scraped = code that gets url end
    # url = "http://www.twittascope.com" + "#{scraped}"
    # Horoscope.new()
    # titles
  # end
  # def self.forecast_today #(obj.url)
    # html = Nokogiri::HTML(open(url))
    #
    # container = html.css(".dh-copy p").first
    #
    # today = container.text.strip


end #closes Scraper
