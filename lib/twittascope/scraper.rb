require 'pry'

require 'pry'
class Scraper
#============================================================
  def self.load_horoscopes
    doc = Nokogiri::HTML(open("http://www.twittascope.com"))

    main = doc.search("ul.site-sign-list li a").each do |t|
      url = "http://www.twittascope.com" + t["href"]
      name = url.gsub("http://www.twittascope.com/?sign=", "").capitalize

      Horoscope.new(url, name)
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
# def self.horoscope_list
#   page = Nokogiri::HTML(open("http://www.twittascope.com"))
#   # signs = []
#   page.css("li.sign-item").each_with_index do |sign, index|
#     puts("#{index+1}. #{sign.text.strip}")
#   # signs
#   end
# end
#
# def self.forecast_today
#     sub_page = Nokogiri::HTML(open("http://www.twittascope.com"))
#     today = sub_page.css(".dh-copy p").map do |today|
#       puts "#{today.text.strip}"
#
#     end
#   end
#
# end
#
#
# # def self.forecast_tomorrow
# #   page = Nokogiri::HTML(open("http://www.twittascope.com")) #this should scrape subpages
# #   tomorrow_news = []
# #   page.css("sign=").each do |name|
# #   horoscope = Horoscope.new
# #   horoscope.tomorrow = page.css("something")
# #   tomorrow_news
# # end
#
# #
# # def self.horoscope_forecast(signs)
# #   horoscopes = {}
# #   sign_pages = Nokogiri::HTML(open(signs))
# #   sign_links
# # end
#
end
