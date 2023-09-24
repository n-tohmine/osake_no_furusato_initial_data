# frozen_string_literal: true

class RenamePhotoReferencesColumnToPhotoReference < ActiveRecord::Migration[6.1]
  def change
    rename_column :brewery_additional_infos, :photo_references, :photo_reference
  end
end
