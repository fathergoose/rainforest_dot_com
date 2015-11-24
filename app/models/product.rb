class Product < ActiveRecord::Base
  belongs_to :supplier
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
