class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.text :description
      t.integer :capacity
      t.boolean :availability, default: false
      t.integer :price_per_night
      t.integer :room_number

      t.timestamps
    end
  end
end
