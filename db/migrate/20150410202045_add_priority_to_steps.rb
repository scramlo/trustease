class AddPriorityToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :priority, :integer
  end
end
