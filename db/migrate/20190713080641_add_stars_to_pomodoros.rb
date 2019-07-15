class AddStarsToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :stars, :integer, default: 0
  end
end
