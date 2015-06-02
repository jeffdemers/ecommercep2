class CreateJoinTableCategoryItem < ActiveRecord::Migration
  def change
    create_table :categories_items, :id => false do |t|
      t.references :category, :null => false
      t.references :item, :null => false



    end
  end
end
