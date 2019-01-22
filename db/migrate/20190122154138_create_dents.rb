class CreateDents < ActiveRecord::Migration[5.2]
  def change
    create_table :dents do |t|
      t.integer :pain_level
      t.integer :sensitivity
      t.string :how_long
      t.string :medications
      t.string :notes

      t.timestamps
    end
  end
end
