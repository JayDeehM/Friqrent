class AddAttachmentImageToEquipment < ActiveRecord::Migration
  def self.up
    change_table :equipment do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :equipment, :image
  end
end
