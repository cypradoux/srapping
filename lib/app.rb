require 'nokogiri'
require 'rubygems'
require 'open-uri'

def crypto_scrapper
page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
all_crypto_symbol = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--hide-sm cmc-table__cell--sort-by__symbol"]')
all_crypto_value = page.xpath('//td[@class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]')


array_symbol = all_crypto_symbol.map {|item| item.text} #on extrait le text du html de xpath symbole
array_value = all_crypto_value.map {|item| item.text}

array_symbol_value = array_symbol.zip(array_value) #compilation du symbole et de la valeur

result = Hash.new #on créé un hash

array_symbol.each_with_index do |symbol, value| #utilisation des index du tableau pour associer la valeur avec le symbole correspondant
        result[symbol] = array_value[value]
end
puts result

end

puts crypto_scrapper