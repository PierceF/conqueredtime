class AddShownToTrophies < ActiveRecord::Migration[5.2]
  def change
    add_column :trophies, :shown, :boolean, default: false
  end
end
