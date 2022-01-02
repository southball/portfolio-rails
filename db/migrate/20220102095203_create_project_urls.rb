# frozen_string_literal: true

class CreateProjectUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :project_urls do |t|
      t.references :project, null: false, foreign_key: true
      t.string :title
      t.string :url

      t.timestamps
    end
  end
end
