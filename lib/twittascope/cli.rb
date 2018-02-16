#Our CLI Controller

require 'colorize'

class Twittascope::CLI

  def call
    puts "Check your horoscope today!".green
    list_horoscope
    display_horoscope
    tomorrow_horoscope

  end

  def list_horoscope
    puts "Type in the number of your Horoscope sign.".yellow
      @horoscope = Twittascope::Horoscope.horoscope_list
    end

  def display_horoscope
    input = nil
    while input != "exit"
      input = gets.to_i
    if input.between?(1,13)
      #will scrape twittascope's today horoscope from website
      @horoscope = Twittascope::Horoscope.today
      puts @horoscope[input]
      more_options
    elsif input == "13"
      @horoscope = Twittascope::Horoscope.dontknow (****put this on its own scraper method? or its own variable***)
    else
      puts "Oops! Please try again!"
    end
  end
end

  def more_options
    puts "Type 'A' to learn about your fortune tomorrow."
    puts "Or type 'B' to main menu."
    input = nil
    while input != "exit"
    input = gets.strip.downcase
    case input
      when "a"
        tomorrow_horoscope
      when "b"
        list_horoscope
      else
        "Oops! We don't recognize! Please try again!"
    end
  end
end


#   def tomorrow_horoscope
#     #scrapes tomorrow's horoscope
#     input = nil
#     puts "You are reading tomorrow's horoscope"
#
#     @horoscope = Twittascope::Horoscope.tomorrow
#
#       #will scrape twittascope's today horoscope from website
#
#       puts @horoscope[input.to_i-1]
#       more_options
#     else
#       puts "Oops! Please try again!"
#     end
#   end
# end
#

  def goodbye
    puts "Goodluck!"
  end


end
