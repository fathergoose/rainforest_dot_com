class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  belongs_to :user
  has_many :orders
  has_many :categorized_products
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
