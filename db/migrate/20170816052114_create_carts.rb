class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :total
      t.integer :amount
      t.references :equipment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
