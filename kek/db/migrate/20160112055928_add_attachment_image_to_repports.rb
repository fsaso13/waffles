class AddAttachmentImageToRepports < ActiveRecord::Migration
  def self.up
    change_table :repports do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :repports, :image
  end
end
