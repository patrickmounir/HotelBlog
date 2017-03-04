class CreateHotels < ActiveRecord::Migration[5.0]
  def change
    create_table :hotels do |t|
      t.string :website
      t.string :name
      t.string :location
      t.string :number

      t.timestamps
    end
  end
end
