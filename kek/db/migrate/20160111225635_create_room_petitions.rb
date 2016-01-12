class CreateRoomPetitions < ActiveRecord::Migration
  def change
    create_table :room_petitions do |t|
      t.integer :user_id
      t.integer :room_id
      t.boolean :occupied

      t.timestamps null: false
    end
  end
end
