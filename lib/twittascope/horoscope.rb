class Twittascope::Horoscope

  attr_accessor :headline, :today, :yesterday, :tomorrow

  @@all = []

  def self.sign_array
    # input = gets.to_i-1
    data = Twittascope::Scraper.scrape_all_attr

    # sign = data.flatten.flatten


    sign[input].url = url
    sign[input].headline = headline
    sign[input].today = today
    sign[input].yesterday = yesterday
    sign[input].tomorrow = tomorrow


    binding.pry

  end

  # a = twittascope::scraper.scraper
  # b = a.flatten.flatten
  # b[1] should equal to taurus object
  # b[1].headline should equal to taurus headline

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
