class Hotel < ApplicationRecord
  validates :name, presence:true

  has_many :reviews, dependent: :destroy
  has_many :assignments, dependent: :destroy
  has_many :services, through: :assignments
end
