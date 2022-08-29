class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :overview
      t.float :price
      t.string :image_url
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
