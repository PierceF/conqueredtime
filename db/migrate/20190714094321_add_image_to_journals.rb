class AddImageToJournals < ActiveRecord::Migration[5.2]
  def change
    add_column :journals, :image, :string
  end
end
