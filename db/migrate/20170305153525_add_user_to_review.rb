class AddUserToReview < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :user, foreign_key: true
    add_reference :reviews, :hotel, foreign_key: true
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :review, foreign_key: true
  end
end
