require 'colorize'

class Twittascope::CLI

  def self.play
    welcome
    display_today
    more_options
    goodbye
  end


  def self.welcome
    puts "Welcome to Twittascope!".yellow
    puts "Type in the number of your Horoscope sign!".yellow
      @headlines = Scraper.scrape_headline
      #  @headlines[0..12].each_with_index do |h1, index|
      #    puts "#{index+1}. #{h1}".colorize(:blue)
      #  end
  end


  def self.goodbye
    puts "Goodluck!"
  end

  def self.more_options
     puts "Type 'list' to see the list again."
     puts "Type 'yesterday' to see yesterday's horoscope."
     puts "Type 'tomorrow' to see tomorrow's horoscope."
     puts "Type 'x' to exit."
      input = nil
      while input != "x"
      input = gets.chomp.downcase
        if input == "list"
          Twittascope::CLI.play
        elsif input == "yesterday"
          puts "you are reading yesterday's horoscope."
        elsif input == "tomorrow"
          puts "you are reading tomorrow's horoscope."
        elsif input == "x"
          puts "Goodbye! Come back to check your fortune!"
          exit
        else
          puts "not sure what you mean, try again."
        end
      end
    end


  def self.display_today
      input = nil
      while input != "x"
      input = gets.chomp.downcase
      if input.to_i.between?(1,13)
      @headlines = Scraper.scrape_headline
      puts @headlines[input.to_i-1].colorize(:red)
      @today = Scraper.scrape_today
      puts @today[input.to_i-1].colorize(:red)
      more_options
    elsif input == "x"
      puts "Goodbye! Come back to check your fortune!"
      exit
    else
      puts "Oops! Please enter a number 1 to 13!"
      puts "Or type 'x' to exit."
    end
  end
end


end  #closes Twittascope::CLI
