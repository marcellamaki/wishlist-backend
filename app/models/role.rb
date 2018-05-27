class Role < ApplicationRecord

  belongs_to :user
  has_many :goods
  has_many :transactions, through: :goods
  has_many :ratings, through: :transactions
  
end
