json.extract! trade, :id, :index, :ticker, :date_buy, :date_sell, :amount, :amount_BTC, :price_buy, :price_sell, :price, :exchange, :open, :ret_BTC, :ret_USD, :logo, :created_at, :updated_at
json.url trade_url(trade, format: :json)
