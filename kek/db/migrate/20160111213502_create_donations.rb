class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.string :title
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
