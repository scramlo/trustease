class CreatePriorityLevels < ActiveRecord::Migration
  def change
    create_table :priority_levels do |t|

      t.timestamps null: false
    end
  end
end
