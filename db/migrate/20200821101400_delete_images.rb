class DeleteImages < ActiveRecord::Migration[6.0]
  def change
    remove_column :cocktails, :photo
  end
end
