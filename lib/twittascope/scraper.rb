require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.load_horoscopes
    horoscopes = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))

      main = doc.search("ul.site-sign-list li a").each do |t|
      url = "http://www.twittascope.com" + t["href"]

      name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
      # horoscopes << {name: sign_name, url: sign_url}
      horoscopes << name
      # binding.pry
      horoscopes.each_with_index do |sign, index|
      index += 1
      puts "#{index}. #{sign}"
      horoscopes

      # Horoscope.new(url, name)
    end

  end
end

  def self.load_page(instance)

    instance.description = whatevr you scrape here

  end


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


end
