class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
