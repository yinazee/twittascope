class Twittascope::Horoscope
  attr_accessor :name, :today, :tomorrow, :dontknow

  @@all = []

  def initialize(name)
  name.each do |attribute, value|
    self.send("#{attribute}=", value)
  end
  @@all << self
end

  def self.horoscope_list
    page = Nokogiri::HTML(open("http://www.twittascope.com"))
    # signs = []
    page.css("li.sign-item").each_with_index do |sign, index|
      puts("#{index+1}. #{sign.text.strip}")
    # signs
    end
  end

  def self.forecast_today
      sub_page = Nokogiri::HTML(open("http://www.twittascope.com"))
      today = sub_page.css(".dh-copy p").map do |today|
        puts "#{today.text.strip}"

      end
    end

  end

  def self.test_this
    puts "greenlight"
  end

      #but i want it in an array
      #follow along the website below
      #https://github.com/yinazee/oo-student-scraper-v-000/blob/solution/lib/scraper.rb

  #       links.each do |link|
  #   if link.include?("linkedin")
  #     student[:linkedin] = link
  #   elsif link.include?("github")
  #     student[:github] = link
  #   elsif link.include?("twitter")
  #     student[:twitter] = link
  #   else
  #     student[:blog] = link
  #
  #   end
  # end

  # def self.forecast_tomorrow
  #   page = Nokogiri::HTML(open("http://www.twittascope.com")) #this should scrape subpages
  #   tomorrow_news = []
  #   page.css("sign=").each do |name|
  #   horoscope = Horoscope.new
  #   horoscope.tomorrow = page.css("something")
  #   tomorrow_news
  # end

  #
  # def self.horoscope_forecast(signs)
  #   horoscopes = {}
  #   sign_pages = Nokogiri::HTML(open(signs))
  #   sign_links
  # end

  # def self.dontknow
  #   page = Nokogiri::HTML(open("http://www.twittascope.com"))
  # end



  # def self.today
  # end
  #
  # def self.tomorrow
  # end
  #
  # def self.dontknow
  # end
  #try to figure out how you will display 'don't know'


#
#   def self.scrape_names
#     doc = Nokogiri::HTML(open("http://twittascope.com"))
#     horoscope = self.new
#     doc.search("li.sign-item").each_with_index do |sign, i|
#       puts "#{i+1}. #{sign.text.strip}"
#     horoscope
#     end
#   end
#
#   def self.today
#     todays = []
#     todays << self.today_news
#     todays
#   end
#
#
#   def self.today_news
#     doc = Nokogiri::HTML(open("http://twittascope.com"))
#
#     today = self.new
#     doc.search(".dh-copy p").each do |fortune|
#       puts "#{fortune.text}"
#     today
#   end
# end
#
#
# end


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
#
#
end
