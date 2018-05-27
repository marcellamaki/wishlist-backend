class Good < ApplicationRecord

  belongs_to :role
  belongs_to :user, through: :roles
  has_many :goods_categories
  has_many :categories, through: :goods_categories

end
