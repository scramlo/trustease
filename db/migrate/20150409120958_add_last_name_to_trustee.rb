class AddLastNameToTrustee < ActiveRecord::Migration
  def change
    add_column :trustees, :lastname, :string
  end
end
