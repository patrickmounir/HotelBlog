class AddUserNameToReviews < ActiveRecord::Migration[5.0]
  def change
    add_column :reviews, :first_name, :string
    add_column :reviews, :last_name, :string
  end
end
