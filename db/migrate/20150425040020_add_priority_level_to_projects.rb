class AddPriorityLevelToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :priority_level, :integer
  end
end
