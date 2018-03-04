require 'colorize'

class Twittascope::CLI

  def self.play
    welcome_menu
    # display_horoscope
  end

  def self.welcome_menu
    # displays horoscope names and birth dates
    puts "Welcome to Twittascope!".yellow
    puts "Type in the number of your Horoscope sign!".yellow
      @names = Scraper.load_url #load all your horoscopes (names and urls only)

      # use Horoscope.all to displayt list of name
      #condition input to go to an index of that list
      #you will have an instance

      # Horoscope.find_by(name)
      #
      # Scraper.load_page
  end



  # def display_horoscope
  #     input = nil
  #     while input != "exit"
  #       input = gets.to_i
  #
  #     if input.between?(1,13)
  #       @horoscope = Twittascope::Horoscope.forecast_today
  #       puts @horoscope[input]
  #       more_options
  #     elsif input == "13"
  #       @horoscope = Twittascope::Horoscope.dontknow
  #       #(****put this on its own scraper method? or its own variable***)
  #     else
  #       puts "Oops! Please try again!"
  #     end
  #   end
  # end


#   def more_options
#     puts "Type 'A' to learn about another horoscope sign."
#     puts "Or type 'B' to exit."
#     input = nil
#     while input != "exit"
#     input = gets.strip.downcase
#     case input
#       when "a"
#         welcome_menu
#       when "b"
#         goodbye
#       else
#         "Oops! We don't recognize! Please try again!"
#         welcome_menu
#     end
#   end
# end

end  #closes Twittascope::CLI





#
#
#
#
# #   def tomorrow_horoscope
# #     #scrapes tomorrow's horoscope
# #     input = nil
# #     puts "You are reading tomorrow's horoscope"
# #
# #     @horoscope = Twittascope::Horoscope.tomorrow
# #
# #       #will scrape twittascope's today horoscope from website
# #
# #       puts @horoscope[input.to_i-1]
# #       more_options
# #     else
# #       puts "Oops! Please try again!"
# #     end
# #   end
# # end
# #
#
#   def goodbye
#     puts "Goodluck!"
#   end
