class RemoveUrlFromProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :url
  end
end
