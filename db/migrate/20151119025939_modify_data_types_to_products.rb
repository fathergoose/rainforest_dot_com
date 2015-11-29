class ModifyDataTypesToProducts < ActiveRecord::Migration
  def change
      change_column :products, :price, 'numeric USING CAST(price AS numeric)' 
      change_column :products, :unit_cost, 'numeric USING CAST(unit_cost AS numeric)'
      change_column :products, :description, :text
  end
end
