class Good < ApplicationRecord

  belongs_to :role
  has_many :goods_categories
  has_many :categories, :through => :goods_categories

  accepts_nested_attributes_for :goods_categories

end
