require 'colorize'
require 'pry'

class Twittascope::CLI

  def play
    welcome
    display_today
    more_options
  end

  def welcome
    puts "\nWelcome to Twittascope!\n".yellow
    sleep (2)
    puts "Loading..................................\n".black
    Twittascope::Horoscope.headline[0..12]
    # .each_with_index do |horoscope, index|
    #
    #   puts "#{index+1}. #{horoscope.headline}\n".colorize(:blue)
    end
  #   puts "Type in the number of your Horoscope sign!\n".yellow
  # end

  def display_today
      input = nil
      while input != "x"
      input = gets.chomp.downcase
      if input.to_i.between?(1,13)
      puts " "
      puts Twittascope::Horoscope.headline[input.to_i-1].colorize(:red)
      puts " "
      puts Scraper.scrape_today(input.to_i-1)[input.to_i-1].colorize(:red)
      puts " "
      more_options(input.to_i-1)
    elsif input == "x"
      puts "Goodbye! Come back to check your fortune!".yellow
      exit
    else
      puts "\nOops! Please enter a number 1 to 13!".yellow
      puts "Or type 'x' to exit.\n".yellow
    end
  end
end


  def more_options(user_input)
     puts "Type 'list' to see the list again.".green
     puts "Type 'yesterday' to see yesterday's horoscope.".green
     puts "Type 'tomorrow' to see tomorrow's horoscope.".green
     puts "Type 'x' to exit.\n".green
      input = nil
      while input != "x"
      input = gets.chomp.downcase
        if input == "list"
          Twittascope::CLI.play
        elsif input == "yesterday"
          puts "\nYou are reading yesterday's horoscope.\n".magenta
          puts Scraper.scrape_yesterday[user_input].magenta
          puts " "
          more_options(user_input)
        elsif input == "tomorrow"
          puts "\nYou are reading tomorrow's horoscope.\n".cyan
          puts Scraper.scrape_tomorrow[user_input].colorize(:cyan)
          puts " "
          more_options(user_input)
        elsif input == "x"
          puts "\nGoodbye! Come back to check your fortune!".yellow
          exit
        else
          puts "\nNot sure what you mean, try again.\n".yellow
        end
      end
    end

end  #closes Twittascope::CLI
