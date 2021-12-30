# frozen_string_literal: true

class Technology < ApplicationRecord
  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true
  validates :icon_url, presence: true

  has_many :project_technologies, dependent: :destroy
  has_many :projects, through: :project_technologies
end
