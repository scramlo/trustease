class PriorityLevel < ActiveRecord::Base
  validates :priority_level, :inclusion => {:in => [1,5]}
  belongs_to :project
end
