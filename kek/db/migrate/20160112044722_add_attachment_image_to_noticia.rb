class AddAttachmentImageToNoticia < ActiveRecord::Migration
  def self.up
    change_table :noticia do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :noticia, :image
  end
end
