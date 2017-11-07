class CreateTrades < ActiveRecord::Migration[5.1]
  def change
    create_table :trades do |t|
      t.integer :index
      t.string :ticker
      t.date :date_buy
      t.date :date_sell
      t.float :amount
      t.float :amount_BTC
      t.float :price_buy
      t.float :price_sell
      t.float :price
      t.string :exchange
      t.boolean :open
      t.float :ret_BTC
      t.float :ret_USD
      t.string :logo

      t.timestamps
    end
  end
end
