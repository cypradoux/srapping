require_relative '../lib/app'

describe "crypto_scrapper" do
    it "should return name of crypto" do
        bitcoin_value = crypto_scrapper("BTC")
        expect(bitcoin_value).to be_a(Float)
    end
end
