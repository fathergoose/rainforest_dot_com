class AddUserandProductToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :user_id, :integer
    add_column :orders, :product_id, :integer
    add_column :orders, :quantity, :integer
    add_column :orders, :tax, :decimal, :precision=>10, :scale=>2
    add_column :orders, :sub_total, :decimal, :precision=>10, :scale=>2
    add_column :orders, :total, :decimal, :precision=>10, :scale=>2
  end
end
