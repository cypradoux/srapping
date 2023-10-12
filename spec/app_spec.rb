require_relative '../lib/app'

describe "crypto_scrapper" do
    it "should return name of crypto" do
        expect(crypto_scrapper("BTC")).to eq(true)
        expect(crypto_scrapper("ETH")).to eq(true)
    end
end
