class Project < ActiveRecord::Base

  validates :title, presence: true,
                    length: { minimum: 5 }

  has_many :workers, dependent: :destroy
  has_many :steps, dependent: :destroy
end
