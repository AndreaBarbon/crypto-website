class WelcomeController < ApplicationController
  def index
    @usd_ret  = File.readlines("/update_balance_log.txt")[-8]
    @eur_ret  = File.readlines("/update_balance_log.txt")[-7]
    @btc_ret  = File.readlines("/update_balance_log.txt")[-6]
    @data_BTC = File.read("/BTC_chart.csv")
    @data_USD = File.read("/USD_chart.csv")
  end
end
