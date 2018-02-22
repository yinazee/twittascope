require "pry"
#===================
# quick exit
def x; exit!;end
#===================

require "nokogiri"
require "rspec"
require "open-uri"



# require_relative '../lib/twittascope/cli'
# require_relative '../lib/twittascope/horoscope.rb'
# require_relative "../lib/twittascope/version"

# Twittascope::CLI.new.call

# puts "greenlight"

require_relative '../lib/twittascope/scraper.rb'

# testing
Scraper.forecast_today
