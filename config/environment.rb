require "pry"
#===================
# quick exit
def x; exit!;end
#===================
require "nokogiri"
require "rspec"
require "open-uri"
require_relative '../lib/twittascope/version'
require_relative '../lib/twittascope/horoscope'
require_relative '../lib/twittascope/scraper'
require_relative '../lib/twittascope/cli'
Twittascope::CLI.play
