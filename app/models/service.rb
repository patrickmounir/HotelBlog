class Service < ApplicationRecord
  has_many :assignments
  has_many :roles, through: :assignments
end
