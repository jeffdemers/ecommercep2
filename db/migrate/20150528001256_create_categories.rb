class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :rank
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
