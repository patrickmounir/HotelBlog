class CreateAssignments < ActiveRecord::Migration[5.0]
  def change
    create_table :assignments do |t|
      t.integer :hotel_id
      t.integer :service_id

      t.timestamps
    end
    add_index :assignments, :hotel_id
    add_index :assignments, :service_id
  end
end
