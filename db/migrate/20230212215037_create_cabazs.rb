class CreateCabazs < ActiveRecord::Migration[7.0]
  def change
    create_table :cabazs do |t|
      t.string :name
      t.integer :price
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
