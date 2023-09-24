# frozen_string_literal: true

class CreateBreweryBasicInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :brewery_basic_infos do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :googlemap_place_id

      t.timestamps
    end
  end
end
