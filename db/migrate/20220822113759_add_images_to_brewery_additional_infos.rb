# frozen_string_literal: true

class AddImagesToBreweryAdditionalInfos < ActiveRecord::Migration[6.1]
  def up
    add_column :brewery_additional_infos, :image, :string
  end

  def down
    remove_column :brewery_additional_infos, :image, :string
  end
end
