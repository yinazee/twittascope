require 'open-uri'
require 'nokogiri'

require_relative './horoscope.rb'

class Twittascope::Scraper

    def self.horoscope_list
      page = Nokogiri::HTML(open("http://www.twittascope.com"))
      signs = []
      page.css("li.sign-item").each_with_index do |sign, index|
        puts("#{index+1}. #{sign.text.strip}")
      signs
      end
    end

    def self.forecast_today
        page = Nokogiri::HTML(open("http://www.twittascope.com")) #this should scrape subpages
        today_news = []
        page.css("sign=").each do |name|
        horoscope = Horoscope.new
        horoscope.today = page.css("dh-copy p")
        today_news

        #but i want it in an array
        #follow along the website below
        #https://github.com/yinazee/oo-student-scraper-v-000/blob/solution/lib/scraper.rb

          links.each do |link|
      if link.include?("linkedin")
        student[:linkedin] = link
      elsif link.include?("github")
        student[:github] = link
      elsif link.include?("twitter")
        student[:twitter] = link
      else
        student[:blog] = link

      end
    end

    def self.forecast_tomorrow
      page = Nokogiri::HTML(open("http://www.twittascope.com")) #this should scrape subpages
      tomorrow_news = []
      page.css("sign=").each do |name|
      horoscope = Horoscope.new
      horoscope.tomorrow = page.css("something")
      tomorrow_news
    end

    #
    # def self.horoscope_forecast(signs)
    #   horoscopes = {}
    #   sign_pages = Nokogiri::HTML(open(signs))
    #   sign_links
    # end

    # def self.dontknow
    #   page = Nokogiri::HTML(open("http://www.twittascope.com"))
    # end




end
