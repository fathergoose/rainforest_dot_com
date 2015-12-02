class RemoveProductIdAndQuantityFromOrders < ActiveRecord::Migration
  def change
    change_table :orders do |t|
      t.remove :product_id
      t.remove :quantity
    end
  end
end
