class ChangeColumnNameImagesInCocktail < ActiveRecord::Migration[6.0]
  def change
    rename_column :cocktails, :image, :photo
  end
end
