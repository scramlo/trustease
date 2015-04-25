class Project < ActiveRecord::Base

  validates :title, presence: true,
                    length: { minimum: 5 }

  belongs_to :trustee
  has_many :workers, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_one :priorty_level, dependent: :destroy
end
