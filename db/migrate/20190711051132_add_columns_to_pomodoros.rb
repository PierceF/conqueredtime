class AddColumnsToPomodoros < ActiveRecord::Migration[5.2]
  def change
    add_column :pomodoros, :start, :datetime
    add_column :pomodoros, :end, :datetime
    add_column :pomodoros, :state, :datetime
  end
end
