require 'open-uri'
require 'nokogiri'
require 'pry'

class Scraper

  def self.load_urls
    urls = []
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))
    main_page = doc.search("ul.site-sign-list li a").each do |item|
    url = "http://www.twittascope.com" + item["href"] #this iterates all the urls
    urls << url if uniq?
    puts "#{urls}"
        # horoscopes << {name: sign_name, url: sign_url} - student scraper

        try working on iterating urls first
        try following: https://github.com/yinazee/ruby-music-library-cli-v-000/blob/solution/lib/artist.rb
    end
  end

  #i have to find a way to iterate through the sites first then grab h1 from each site

  #name = doc.search("h1").text
  #names << name
  #names.each_with_index do |sign, index|
  #puts "#{index+1}. #{sign}"
  # name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize
  # Horoscope.new(url, name)
  #end


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
