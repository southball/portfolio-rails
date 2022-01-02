# frozen_string_literal: true

class CreateProjectScreenshots < ActiveRecord::Migration[7.0]
  def change
    create_table :project_screenshots do |t|
      t.references :project, null: false, foreign_key: true
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
