class ChangeStateToPomodoros < ActiveRecord::Migration[5.2]
  def change
        change_column :pomodoros, :state, :string

  end
end
