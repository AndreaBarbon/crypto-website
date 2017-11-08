
class Trade < ApplicationRecord
  self.primary_key = "index"
  default_scope { order('date_buy DESC') }

  def crypto_compare_link
  	"https://www.cryptocompare.com/coins/#{self.ticker}/overview/BTC"
  end
end
