class AddCoordinatorToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :coordinator, :string
  end
end
