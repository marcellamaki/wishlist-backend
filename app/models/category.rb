class Category < ApplicationRecord

  has_many :goods_categories
  has_many :goods, :through => :goods_categories

end
