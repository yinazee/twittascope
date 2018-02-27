class Twittascope::Horoscope
  attr_accessor :name, :yesterday, :today, :tomorrow
  @@all = []
    def initialize(name)
      self.name = name
      self.yesteday = yesterday
      self.today = today
      self.tomorrow = tomorrow
      self.url = url
      @@all << self
    end
    def self.all
       @@all
    end

  #===========================find=============================
    def self.find_by(url)
      Horoscope.all.find{|m| m.url == url}
    end
  #============================================================
  end
