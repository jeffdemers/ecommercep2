class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :image
      t.decimal :price
      t.integer :inventory
      t.integer :seller_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
