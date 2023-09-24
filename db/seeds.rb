# frozen_string_literal: true
require 'csv'

# PlacesAPIで醸造所を検索する際に必要なlocation情報を入れたオブジェクトを作成
locations_csv = CSV.readlines('db/locations.csv')
locations_csv.shift
locations_csv.each do |row|
  Location.create(
    prefecture: row[1],
    central_point: row[2],
    search_radius: row[3],
    latitude: row[4],
    longitude: row[5]
  )
end

# spreadsheetで整理したbrewery_basic_dataを元にBreweryBasicInfoオブジェクトを作成
locations_csv = CSV.readlines('db/brewery_basic_data.csv')
locations_csv.shift
locations_csv.each do |row|
  BreweryBasicInfo.create(
    name: row[1],
    address: row[2],
    latitude: row[3],
    longitude: row[4],
    googlemap_place_id: row[5]
  )
end
