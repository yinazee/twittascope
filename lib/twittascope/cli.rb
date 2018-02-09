#Our CLI Controller

class Twittascope::CLI

  def call
    puts "Check your horoscope today!"
    list_horoscope
    display_horoscope
    goodbye
  end

  def list_horoscope
    puts "Type in the number of your Horoscope sign."
      @horoscope = Twittascope::Horoscope.horoscope_list
      @horoscope.each.with_index(1) do |sign, i|
        puts "#{i}. #{sign.name}"
      end
    end


  def display_horoscope
    input = nil
    while input != "exit"
      input = gets.strip.downcase

    if input.to_i.between?(1,12)
      #will scrape twittascope's today horoscope from website
      @horoscope = Twittascope::Horoscope.today
      puts @horoscope[input.to_i-1]
      more_options
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


  def tomorrow_horoscope
    #scrapes tomorrow's horoscope
    puts "You are reading tomorrow's horoscope"
    @horoscope = Twittascope::Horoscope.tomorrow
    more_options
  end

  def goodbye
    puts "Goodluck!"
  end


end
