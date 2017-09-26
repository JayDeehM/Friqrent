class AddCompanyIdToEquipment < ActiveRecord::Migration
  def change
    add_column :equipment, :company_id, :integer
  end
end
