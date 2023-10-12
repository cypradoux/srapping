require 'nokogiri'
require 'rubygems'
require 'open-uri'

page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
all_crypto_symbol = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]')
all_crypto_value = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')


array_symbol = all_crypto_symbol
array_symbol_value = []


array_symbol.each do |crypto_symbol|
    array_symbol_value << crypto_symbol.text
end

puts array_symbol_value

