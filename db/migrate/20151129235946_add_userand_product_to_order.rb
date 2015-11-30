class AddUserandProductToOrder < ActiveRecord::Migration
  def change
    add_column :order, :user_id, :integer
    add_column :order, :product_id, :integer
    add_column :order, :quantity, :integer
    add_column :order, :tax, :decimal, :precision=>10, :scale=>2
    add_column :order, :sub_total, :decimal, :precision=>10, :scale=>2
    add_column :order, :total, :decimal, :precision=>10, :scale=>2
  end
end
