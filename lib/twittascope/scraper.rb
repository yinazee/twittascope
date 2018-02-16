class Twittascope::Scraper

  def get_page
    Nokogiri::HTML(open("http://www.twittascope.com"))
  end

end
