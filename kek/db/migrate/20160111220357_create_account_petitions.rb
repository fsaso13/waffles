class CreateAccountPetitions < ActiveRecord::Migration
  def change
    create_table :account_petitions do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
