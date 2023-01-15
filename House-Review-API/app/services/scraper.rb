require 'rubygems'
require 'mechanize'

class Scraper < ApplicationRecord

  def self.scrape
    agent = Mechanize.new
   # raise
    page = agent.get('https://suumo.jp/library/tf_13/sc_13110/to_1002173565/?bs=040')

  end
end
