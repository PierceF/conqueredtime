class AddStarsToMilestones < ActiveRecord::Migration[5.2]
  def change
    add_column :milestones, :stars, :integer
  end
end
