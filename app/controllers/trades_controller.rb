class TradesController < ApplicationController
  before_action :set_trade, only: [:show, :edit, :update, :destroy]

  # GET /trades
  # GET /trades.json
  def index
    @trades = Trade.all
  end


  def open_positions
    tickers = []
    @positions = Trade.where(open:1)
    @positions.each do |pos|
      tickers << pos.ticker
    end
    tickers_str = "#{tickers.join(",")}"

    url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=#{tickers_str}&tsyms=BTC,USD,EUR"
    response = JSON.parse(RestClient::Request.execute(method: :get, url:url))

    @positions.each do |pos|
      pos.price   = response[pos.ticker]['BTC']
      pos.ret_BTC = (pos.price-pos.price_buy)/pos.price_buy
      pos.save
    end

    @avg_ret = @positions.average(:ret_BTC)

    # Random coins
    # @random_coins = Trade.order("RANDOM()").limit( tickers.length )
    # tickers = []
    # @random_coins.each do |pos|
    #   tickers << pos.ticker
    # end
    # tickers_str = "#{tickers.join(",")}"
    # url = "https://min-api.cryptocompare.com/data/pricemulti?fsyms=#{tickers_str}&tsyms=BTC,USD,EUR"
    # response = JSON.parse(RestClient::Request.execute(method: :get, url:url))
    # returns = []
    # @random_coins.each do |pos|
    #   pos.price   = response[pos.ticker]['BTC']
    #   returns << (pos.price-pos.price_buy)/pos.price_buy
    # end
    # @avg_ret_random = returns.reduce(:+) / returns.size.to_f
  end


  # GET /trades/1
  # GET /trades/1.json
  def show
  end

  # GET /trades/new
  def new
    @trade = Trade.new
  end

  # GET /trades/1/edit
  def edit
  end

  # POST /trades
  # POST /trades.json
  def create
    @trade = Trade.new(trade_params)

    respond_to do |format|
      if @trade.save
        format.html { redirect_to @trade, notice: 'Trade was successfully created.' }
        format.json { render :show, status: :created, location: @trade }
      else
        format.html { render :new }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trades/1
  # PATCH/PUT /trades/1.json
  def update
    respond_to do |format|
      if @trade.update(trade_params)
        format.html { redirect_to @trade, notice: 'Trade was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade }
      else
        format.html { render :edit }
        format.json { render json: @trade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trades/1
  # DELETE /trades/1.json
  def destroy
    @trade.destroy
    respond_to do |format|
      format.html { redirect_to trades_url, notice: 'Trade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade
      @trade = Trade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_params
      params.require(:trade).permit(:index, :ticker, :date_buy, :date_sell, :amount, :amount_BTC, :price_buy, :price_sell, :price, :exchange, :open, :ret_BTC, :ret_USD, :logo)
    end
end
