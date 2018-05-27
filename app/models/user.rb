class User < ApplicationRecord

  has_secure_password

  has_many :roles
  has_many :goods, through: :roles
  has_many :goods_categories, through: :goods
  has_many :categories, through: :goods_categories

  validates :email, uniqueness: true
  validates :username, uniqueness: true

end
