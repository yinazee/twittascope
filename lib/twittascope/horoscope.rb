class Horoscope
    attr_accessor :url, :headline, :yesterday, :today, :tomorrow

    @@all = []

  def initialize(horoscope_hash)
    horoscope_hash.each do |attribute, value|
      self.send("#{attribute}=", value)
    end
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
