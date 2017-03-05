class Review < ApplicationRecord
  belongs_to :user
  belongs_to :hotel
  has_many :comments, dependent: :destroy
  validates :message, presence:true
end
