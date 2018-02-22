require "pry"
#===================
# quick exit
def x; exit!;end
#===================

require "nokogiri"
require "rspec"
require "open-uri"


require_relative '../lib/twittascope/cli.rb'
Twittascope::CLI.play


# require_relative '../lib/twittascope/scraper.rb'
