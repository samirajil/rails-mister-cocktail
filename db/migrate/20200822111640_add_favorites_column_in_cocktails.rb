class AddFavoritesColumnInCocktails < ActiveRecord::Migration[6.0]
  def change
    add_column :cocktails, :favorites, :boolean, default: false
  end
end
