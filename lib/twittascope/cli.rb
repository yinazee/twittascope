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

  def today_horoscope
    puts "You will be very lucky today."
    puts "Type 'A' to learn about your fortune tomorrow."
    puts "Or type 'B' to main menu."
  end

  def tomorrow_horoscope
    puts "You are reading tomorrow's horoscope"
    puts "Type 'A' to learn about your fortune tomorrow."
    puts "Or type 'B' to main menu."
  end

  def selection
    input = nil
    while input != "exit"
      input = gets.strip.downcase
      #horoscope will load
      case input
      when "1"
        today_horoscope
      when "2"
        today_horoscope
      when "A"
        tomorrow_horoscope
      when "B"
        list_horoscope
      else "Oops! We don't recognize #{input}! Please try again!"
      end
    end
  end

  def goodbye
    puts "Goodluck!"
  end


end
