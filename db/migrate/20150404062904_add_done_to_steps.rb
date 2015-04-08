class AddDoneToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :done, :boolean
  end
end
