class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :surname, :string
    add_column :users, :rut, :string
    add_index :users, :rut, unique: true
    add_column :users, :gender, :boolean
  end
end
