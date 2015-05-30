class CreateCategoryItems < ActiveRecord::Migration
  def change
    create_table :category_items do |t|
      t.references :category, index: true
      t.references :item, index: true

      t.timestamps null: false
    end
    add_foreign_key :category_items, :categories
    add_foreign_key :category_items, :items
  end
end
