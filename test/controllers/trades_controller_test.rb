require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trade = trades(:one)
  end

  test "should get index" do
    get trades_url
    assert_response :success
  end

  test "should get new" do
    get new_trade_url
    assert_response :success
  end

  test "should create trade" do
    assert_difference('Trade.count') do
      post trades_url, params: { trade: { amount: @trade.amount, amount_BTC: @trade.amount_BTC, date_buy: @trade.date_buy, date_sell: @trade.date_sell, exchange: @trade.exchange, index: @trade.index, logo: @trade.logo, open: @trade.open, price: @trade.price, price_buy: @trade.price_buy, price_sell: @trade.price_sell, ret_BTC: @trade.ret_BTC, ret_USD: @trade.ret_USD, ticker: @trade.ticker } }
    end

    assert_redirected_to trade_url(Trade.last)
  end

  test "should show trade" do
    get trade_url(@trade)
    assert_response :success
  end

  test "should get edit" do
    get edit_trade_url(@trade)
    assert_response :success
  end

  test "should update trade" do
    patch trade_url(@trade), params: { trade: { amount: @trade.amount, amount_BTC: @trade.amount_BTC, date_buy: @trade.date_buy, date_sell: @trade.date_sell, exchange: @trade.exchange, index: @trade.index, logo: @trade.logo, open: @trade.open, price: @trade.price, price_buy: @trade.price_buy, price_sell: @trade.price_sell, ret_BTC: @trade.ret_BTC, ret_USD: @trade.ret_USD, ticker: @trade.ticker } }
    assert_redirected_to trade_url(@trade)
  end

  test "should destroy trade" do
    assert_difference('Trade.count', -1) do
      delete trade_url(@trade)
    end

    assert_redirected_to trades_url
  end
end
