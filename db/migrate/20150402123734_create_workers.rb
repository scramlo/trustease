class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|
      t.string :name
      t.string :number
      t.string :email
      t.references :project, index: true

      t.timestamps null: false
    end
    add_foreign_key :workers, :projects
  end
end
