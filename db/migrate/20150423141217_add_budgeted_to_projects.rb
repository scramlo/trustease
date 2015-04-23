class AddBudgetedToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :budgeted, :boolean
  end
end
