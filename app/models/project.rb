class Project < ActiveRecord::Base

  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :workers
  has_many :steps
end
