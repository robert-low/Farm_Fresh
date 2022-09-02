class AddMiniDescriptionToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :mini_description, :string
  end
end
