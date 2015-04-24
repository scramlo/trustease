class Comment < ActiveRecord::Base
  belongs_to :trustee
  belongs_to :project
end
