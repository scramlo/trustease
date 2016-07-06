class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :info

      t.timestamps null: false
    end
  end
end
