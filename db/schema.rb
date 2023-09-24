# frozen_string_literal: true

ActiveRecord::Schema.define(version: 20_230_924_152_525) do
  create_table 'brewery_additional_infos', force: :cascade do |t|
    t.string 'googlemap_place_id'
    t.string 'phone_number'
    t.string 'website_url'
    t.string 'prefecture'
    t.string 'photo_reference'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.string 'image'
  end

  create_table 'brewery_basic_infos', force: :cascade do |t|
    t.string 'name'
    t.string 'address'
    t.float 'latitude'
    t.float 'longitude'
    t.string 'googlemap_place_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'locations', force: :cascade do |t|
    t.string 'prefecture'
    t.string 'central_point'
    t.integer 'search_radius'
    t.float 'latitude'
    t.float 'longitude'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end
end
