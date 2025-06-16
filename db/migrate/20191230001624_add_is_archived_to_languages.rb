class AddIsArchivedToLanguages < ActiveRecord::Migration[5.0]
  def change
    add_column :languages, :is_archived, :boolean, default: false, null: false
  end
end