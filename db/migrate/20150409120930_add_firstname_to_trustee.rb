class AddFirstnameToTrustee < ActiveRecord::Migration
  def change
    add_column :trustees, :firstname, :string
  end
end
