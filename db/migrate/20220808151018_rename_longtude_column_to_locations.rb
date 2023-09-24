# frozen_string_literal: true

class RenameLongtudeColumnToLocations < ActiveRecord::Migration[6.1]
  def change
    rename_column :locations, :longtude, :longitude
  end
end
