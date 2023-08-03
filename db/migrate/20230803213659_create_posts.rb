class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id, null: false
      t.integer :category_id, null: false
      t.string :item_name, null: false
      t.text :introduction, null: false
      t.string :brand, null: false
      t.integer :usability, null: false
      t.string :ingredient1, null: false
      t.string :ingredient2, null: false
      t.string :ingredient3, null: false
      t.float :star, null: false
      t.integer :price, null: false

      t.timestamps
    end
  end
end
