class Display


attr_accessor :name, :horoscope

@@all = []

def initialize
  @@all << self
end

class self.all
@@all
end

class self.reset_all
  @@all.clear
end

end
