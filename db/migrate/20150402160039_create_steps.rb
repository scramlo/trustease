class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :steps, :projects
  end
end
