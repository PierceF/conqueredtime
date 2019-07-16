class RemoveShownFromTrophies < ActiveRecord::Migration[5.2]
  def change
    remove_column :trophies, :shown
  end
end
