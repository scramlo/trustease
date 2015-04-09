class AddTrusteeIdToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :trustee_id, :integer
  end
end
