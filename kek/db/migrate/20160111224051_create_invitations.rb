class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.text :description
      t.integer :user_id
      t.integer :activity_id

      t.timestamps null: false
    end
  end
end
