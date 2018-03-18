require 'colorize'

class Twittascope::CLI

  def self.play
    # work
    welcome
    display_today
    goodbye
  end

  def self.work
    input = nil
    while input != "x"
      input = gets
      if input == "a"
      puts "oh wells"
    elsif input == "b"
      puts "okay"
    else
      puts "try again"
    end
  end
  binding.pry
end


  def self.welcome
    puts "Welcome to Twittascope!".yellow
    puts "Type in the number of your Horoscope sign!".yellow
      @headlines = Scraper.scrape_headline
       @headlines[0..12].each_with_index do |h1, index|
         puts "#{index+1}. #{h1}".colorize(:blue)
       end
  end


  def self.goodbye
    puts "Goodluck!"
  end

  def self.more_options
    puts "more options"
  end

  def self.display_today
      input = nil
      while input != "exit"
      input = gets.chomp.downcase
      if input.to_i.between?(1,13)
      @headlines = Scraper.scrape_headline
      puts @headlines[input.to_i-1].colorize(:red)
      @today = Scraper.scrape_today
      puts @today[input.to_i-1].colorize(:red)
    else
      puts "Oops! Please enter a number 1 to 13!"
      puts "Or type 'exit' to exit."
    end
  end
  end


  # def more_options

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
