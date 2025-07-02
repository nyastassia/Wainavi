class AddCategoryToGrapeVarieties < ActiveRecord::Migration[7.1]
  def change
    add_column :grape_varieties, :category, :string
  end
end
