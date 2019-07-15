class CreateAchievements < ActiveRecord::Migration[5.2]
  def change
    create_table :achievements do |t|
      t.references :trophy, foreign_key: true
      t.references :journal, foreign_key: true

      t.timestamps
    end
  end
end
