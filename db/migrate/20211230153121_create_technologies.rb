# frozen_string_literal: true

class CreateTechnologies < ActiveRecord::Migration[7.0]
  def change
    create_table :technologies do |t|
      t.string :name
      t.string :url
      t.string :icon_url

      t.timestamps
    end
  end
end
