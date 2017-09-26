class AddActivatedToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :activated, :boolean
  end
end
