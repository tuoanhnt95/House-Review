class Scraper < ApplicationRecord
  def self.scrape(url)
    puts "got the building: #{url}"
  end
end
