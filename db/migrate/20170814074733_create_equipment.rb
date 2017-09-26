class CreateEquipment < ActiveRecord::Migration
  def change
    create_table :equipment do |t|
      t.string :category
      t.string :mixer_name
      t.integer :faders
      t.integer :inputs
      t.integer :house_outputs
      t.integer :monitor_outputs
      t.string :speaker_name
      t.integer :watts
      t.integer :woofer_size
      t.integer :peak
      t.string :microphone_name
      t.boolean :wired
      t.boolean :wireless
      t.string :amplifier_name
      t.boolean :guitar
      t.boolean :bass
      t.boolean :keyboard
      t.integer :rent_price
      t.text :others

      t.timestamps null: false
    end
  end
end
