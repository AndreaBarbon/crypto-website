class WelcomeController < ApplicationController
  def index
    @usd_ret  = File.readlines("/2.0/logs/update_balance.txt")[-8]
    @eur_ret  = File.readlines("/2.0/logs/update_balance.txt")[-7]
    @btc_ret  = File.readlines("/2.0/logs/update_balance.txt")[-6]
    @data_BTC = File.read("/2.0/BTC_chart.csv")
    @data_USD = File.read("/2.0/USD_chart.csv")
  end
end
