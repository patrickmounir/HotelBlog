class User < ApplicationRecord
  has_many :reviews , dependent: :destroy
  has_many :comments , dependent: :destroy
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :email, presence:true, uniqueness:true
  validates :password, presence:true, length:{ in: 5..30}
end
