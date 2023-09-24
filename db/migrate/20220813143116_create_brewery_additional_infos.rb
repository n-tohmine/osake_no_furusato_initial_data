# frozen_string_literal: true

class CreateBreweryAdditionalInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :brewery_additional_infos do |t|
      t.string :googlemap_place_id
      t.string :phone_number
      t.string :website_url
      t.string :prefecture
      t.string :photo_references

      t.timestamps
    end
  end
end
