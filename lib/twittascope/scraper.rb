require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.headlines
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    headlines = []
    doc.search("ul.site-sign-list li a").each do |t|
      url = "http://www.twittascope.com" + t["href"]

      v1 = Nokogiri::HTML(open(url))
      headline = v1.search("h1").text
      headlines << headline
      headlines[0..12].each_with_index do |h1, index|
        puts "#{index+1}. #{h1}"
      end
   end
   headlines
  end

  def self.today
    # doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    # headlines = []
    # doc.search("ul.site-sign-list li a").each do |t|
    #   url = "http://www.twittascope.com" + t["href"]
    puts "hihi world"
    end



# url.name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
# selection = url.name = url #how do i output this

  def self.load_urls
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))

    urls = []
    signs = doc.search("ul.site-sign-list li a").text
    # name = "http://www.twittascope.com" + item["href"].gsub("http://www.twittascope.com/?sign=", "").capitalize #this iterates all the urls
    urls << signs
    urls.each_with_index do |name, index|
      puts "#{name} - #{site}"
        # horoscopes << {name: sign_name, url: sign_url} - student scraper
        # try following: https://github.com/yinazee/ruby-music-library-cli-v-000/blob/solution/lib/artist.rb
    end
  end
  #i have to find a way to iterate through the sites first then grab h1 from each site




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
