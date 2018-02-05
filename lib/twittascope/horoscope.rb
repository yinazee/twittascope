class Twittascope::Horoscope

attr_accessor :name, :new

def self.today
  #should return user input's today's horoscope
  # puts "You are reading today's horoscope."
 horoscope_1 = self.new
 horoscope_1.name = "Aries"
 horoscope_1.new = "Aries. pull from website"

 horoscope_2 = self.new
 horoscope_2.name = "Taurus"
 horoscope_2.new = "Taurus. pull from website"

 horoscope_3 = self.new
 horoscope_3.name = "Gemini"
 horoscope_3.new = "Gemini. pull from website"

 [horoscope_1, horoscope_2, horoscope_3]
end

end
