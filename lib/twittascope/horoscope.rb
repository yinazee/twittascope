  class Horoscope
    attr_accessor :url, :name, :yesterday, :today, :tomorrow
    @@all = []

      def initialize(url, name)
        @url = url
        @name = name
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
