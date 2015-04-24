class AddTrusteeIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :trustee_id, :integer
  end
end
