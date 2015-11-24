class ModifyDataTypesToProducts < ActiveRecord::Migration
  def change
      change_column :products, :price, :integer
      change_column :products, :unit_cost, :integer
      change_column :products, :description, :text
  end
end
