class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: [:finders, :slugged]

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :project_technologies
  has_many :technologies, through: :project_technologies
end
