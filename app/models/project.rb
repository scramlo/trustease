class Project < ActiveRecord::Base

  validates :title, presence: true,
                    length: { minimum: 5 }

  belongs_to :trustee
  has_many :workers, dependent: :destroy
  has_many :steps, dependent: :destroy
  has_many :comments, dependent: :destroy
end
