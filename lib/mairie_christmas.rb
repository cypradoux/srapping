require 'nokogiri'
require 'rubygems'
require 'open-uri'


page = Nokogiri::HTML(URI.open("http://annuaire-des-mairies.com/95/ermont.html"))
city_name = page.xpath('//h1[@class="col-md-12 col-lg-10 col-lg-offset-1"]')
email = page.xpath('//tr[@class="txt-primary tr-last"]')

puts city_name.text
puts email.text
