class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :email
      t.string :password_digest
      t.string :shop_name
      t.string :seller_name
      t.string :shop_name
      t.string :purchase_desription
      t.string :business_description
      t.string :logo

      t.timestamps null: false
    end
  end
end
