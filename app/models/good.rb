class Good < ApplicationRecord

  belongs_to :role
  belongs_to :user, through: :role
  has_many :requests

end
