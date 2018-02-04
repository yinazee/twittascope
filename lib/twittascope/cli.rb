#Our CLI Controller

class Twittascope::CLI

  def call
    puts "Check your horoscope today!"
    list_horoscope
    selection
    goodbye
  end

  def list_horoscope
    puts "1. Aries"
    puts "2. Taurus"
    puts "Type in the number of your Horoscope sign!"
  end

  def option
    puts "Type 'A' to learn about your fortune tomorrow."
    puts "Or type 'B' to main menu."
  #   input = nil
  #   while input != "exit"
  #   input = gets.strip.downcase
  #   case input
  #     when "a"
  #       tomorrow_horoscope
  #     when "b"
  #       list_horoscope
  #     else
  #       "Oops! We don't recognize! Please try again!"
    end
  # end

  def today_horoscope
    #scrapes today's horoscope
    #date
    #horoscope
    # puts "You will be very lucky today."
    @horoscope = Twittascope::Horoscope.today
    option
  end


  # def tomorrow_horoscope
  #   #scrapes tomorrow's horoscope
  #   puts "You are reading tomorrow's horoscope"
  #   @horoscope = Twittascope::Horoscope.tomorrow
  #   option
  # end

  def selection
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      if input.to_i.between?(1,12)
        today_horoscope
        option
      else
        puts "Oops! Please try again!"
        list_horoscope
      end
    end
  end


  def goodbye
    puts "Goodluck!"
  end


end
