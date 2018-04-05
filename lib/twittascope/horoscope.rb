class Twittascope::Horoscope

  attr_accessor :url, :headline, :today, :yesterday, :tomorrow


  @@all = []

  def self.all
    @@all
  end

  def save
    @@all << self
  end

end
