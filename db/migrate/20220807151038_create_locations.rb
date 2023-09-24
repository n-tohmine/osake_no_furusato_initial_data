# frozen_string_literal: true

class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.string :prefecture
      t.string :central_point
      t.integer :search_radius
      t.float :latitude
      t.float :longtude

      t.timestamps
    end
  end
end
