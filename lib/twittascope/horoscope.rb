require 'pry'
require 'open-uri'
require 'nokogiri'

class Twittascope::Horoscope
  attr_accessor :name, :today, :tomorrow

  def self.horoscope_list
    # Scrape woot and meh and then return horoscopes based on that data
    self.horoscope_names
  end

  def self.horoscope_names
    horoscopes = []
    horoscopes << self.scrape_today
    horoscopes
  end


  def self.scrape_today
    doc = Nokogiri::HTML(open("http://twittascope.com"))

    horoscope = self.new
    horoscope.name = doc.search("h2.main-title").text.strip
    horoscope.today = doc.search("dh-copy p").text.strip
    horoscope.tomorrow = doc.search("a.wantone").first.attr("href").strip

    horoscope
  end


end

# class Twittascope::Horoscope
#
# attr_accessor :name, :new
#
# def self.scrape_horoscope
#   doc = Nokogiri::HTML(open("http://www.twittascope.com/"))
#   binding.pry
#
#
#   # doc.css(".dh-copy p").text
#   # doc.css("sign-icon sign-1").text
# end
#
# def shortcut
#   self.scrape_horoscope.css(".dh-signlist")
#
#
# end
#
# def get_horoscope
#   self.shortcut.each do |sign|
#   sign = Display.new
#   sign.name = sign.css("sign-1").text
#
# end
# end
#
# def self.list
#   #should return user input's today's horoscope
#   # horoscopes = []
#   # horoscopes << self.scrape_horoscope
#   # horoscopes
#   puts "1. Aries"
#   puts "2. Taurus"
#   puts "3. Gemini"
#
#
# end
#
# def self.today
#   scrape_horoscope
# end
#
#
# def self.tomorrow
#   scrape_horoscope
# end
#
#
#
#
#   #
#   # horoscope_1 = self.new
#   # horoscope_1.name = "Aries"
#   # horoscope_1.new = "Aries. pull from website"
#   #
#   # horoscope_2 = self.new
#   # horoscope_2.name = "Taurus"
#   # horoscope_2.new = "Taurus. pull from website"
#   #
#   # horoscope_3 = self.new
#   # horoscope_3.name = "Gemini"
#   # horoscope_3.new = "Gemini. pull from website"
#
#
#
#
# end
