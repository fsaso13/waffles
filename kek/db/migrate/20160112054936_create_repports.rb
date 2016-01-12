class CreateRepports < ActiveRecord::Migration
  def change
    create_table :repports do |t|
      t.string :title
      t.date :date
      t.text :preview
      t.text :description

      t.timestamps null: false
    end
  end
end
