# frozen_string_literal: true

class Project < ApplicationRecord
  extend FriendlyId
  friendly_id :slug, use: %i[finders slugged]

  validates :title, presence: true
  validates :slug, presence: true, uniqueness: true

  has_many :project_technologies, dependent: :destroy
  has_many :technologies, through: :project_technologies
  has_many :project_urls, dependent: :destroy
end
