class AddImageToCategories < ActiveRecord::Migration[7.2]
  def change
    add_column :categories, :image, :string
  end
end
