require 'open-uri'
require 'nokogiri'

class ScraperController < ApplicationController
  def scrape
    puts "got the building: #{params[:url]}"
    result = parse(params[:url])
    reg(result)
  end

  private

  def parse(url)
    html_file = URI.open(url).read
    html_doc = Nokogiri::HTML(html_file)
    domain = SUUMO_HTML
    scrape = {}
    # search values from HTML-inner_text
    domain.each_pair do |k, v|
      scrape[k] = html_doc.search(v).inner_text
    end
    # search values for no-HTML-inner_text
    scrape[:img_src] = html_doc.search('.property_view_object-img').first.first[1]
    puts scrape
    scrape
  end

  def turn_to_number(matches_hash)
    reg_ex = /万/
    matches_hash.each_pair do |k, v|
      if v == '-'
        matches_hash[k] = 0
      elsif reg_ex.match(v)
        matches_hash[k] = v.to_f * 10_000
      else
        matches_hash[k] = v.to_f
      end
    end
  end

  def reg(result)
    # filter the number with regex
    matches = {}
    SUUMO_REGEX.each_pair do |k, v|
      puts v.match(result[k])
      matches[k] = v.match(result[k])
      # matches[k] = v.match(result[k])[1]
    end
    # turn string into number for numerical attributes
    turn_to_number(matches)
    # assign values for non-numerical attributes
    matches[:img_src] = result[:img_src]
    puts matches
    matches
  end
end

SUUMO_REGEX = {
  rent_fee: /([\d.-万]+)/,
  mng_fee: /([\d.-万]+)/,
  lease_deposit: /([\d.-万]+)/,
  key_money: /([\d.-万]+)/,
  guarantee_deposit: /([\d.-万]+)/,
  floor_area: /([\d.-]+)/,
  # floor_area: /([\d.-]+)m/,
  station_distance_time: /([\d.-]+)/,
  built_year: /([\d.-]+)/,
  floor: /([\d.-]+)/
}

SUUMO_HTML = {
  layout: 'div.l-property_view_table tr:nth-child(3) td:nth-child(2)',
  rent_fee: '.property_view_note-emphasis',
  mng_fee: '.property_view_note-list:first-child span:nth-child(2)',
  lease_deposit: '.property_view_note-list:nth-child(2) span:first-child',
  key_money: '.property_view_note-list:nth-child(2) span:nth-child(2)',
  guarantee_deposit: '.property_view_note-list:nth-child(2) span:nth-child(3)',
  floor_area: 'div.l-property_view_table tr:nth-child(3) td:nth-child(4)',
  station_distance_time: 'div.l-property_view_table .property_view_table-body .property_view_table-read:first-child',
  built_year: 'div.l-property_view_table tr:nth-child(4) td:nth-child(2)',
  floor: 'div.l-property_view_table tr:nth-child(4) td:nth-child(4)'
}
