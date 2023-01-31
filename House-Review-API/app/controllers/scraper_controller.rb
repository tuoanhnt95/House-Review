class ScraperController < ApplicationController
  def scrape
    @url = params[:url]
    puts @url
    Scraper.scrape(@url)
  end
end
