class AddAwattsToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :awatts, :integer
  end
end
