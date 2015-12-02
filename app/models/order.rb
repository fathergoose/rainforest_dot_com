class Order < ActiveRecord::Base
  has_one :user, through: :carted_product
end
