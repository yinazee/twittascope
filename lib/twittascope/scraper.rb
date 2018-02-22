class Scraper

  # url = "http://www.twittascope.com" +

  # http://www.twittascope.com/?sign=aries

  def self.load_main_page
    html = Nokogiri::HTML(open("mainpage url"))

    # scraped = code that gets url end
    # url = "http://www.twittascope.com" + "#{scraped}"

    Horoscope.new()
    # titles
  end

  def self.forecast_today #(obj.url)

    # html = Nokogiri::HTML(open(url))
    #
    # container = html.css(".dh-copy p").first
    #
    # today = container.text.strip


  end

end
