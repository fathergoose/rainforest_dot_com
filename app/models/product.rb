class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :categorized_products
  has_many :categories, through: :categorized_products 
  has_many :carted_products
  has_many :users, through: :carted_products
  SALES_TAX = 0.09
  def sale_item
    if price.to_i < 10
      "On Sale!!!"
    end
  end
  def sales_tax
    price.to_i * 0.09
  end
  def total_price
  end
end
