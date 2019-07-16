class AddShownToAchievements < ActiveRecord::Migration[5.2]
  def change
    add_column :achievements, :shown, :boolean, default: false
  end
end
