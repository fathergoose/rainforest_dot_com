class PriceDecimalToIntegerToProducts < ActiveRecord::Migration
  change_column :products, :price, :integer
  change_column :products, :unit_cost, :integer
  change_column :products, :description, :text
end
