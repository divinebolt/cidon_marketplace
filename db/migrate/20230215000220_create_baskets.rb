class CreateBaskets < ActiveRecord::Migration[7.0]
  def change
    create_table :baskets do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :photo

      t.timestamps
    end
  end
end
