# frozen_string_literal: true

class PlacesApiNearbySearchController < ApplicationController
  def index
    # location情報を元にplacesAPIで醸造所を検索
    api_key = Rails.application.credentials.google[:api_key]
    client = GooglePlaces::Client.new(api_key)

    @brewery_basic_infos = []

    locations = Location.all
    locations.each do |location|
      @latitude = location.latitude
      @longitude = location.longitude
      @search_radius = location.search_radius

      results = client.spots(@latitude, @longitude, keyword: '酒蔵 工場見学', details: true,
                                                    types: %w[point_of_interest food], exclude: 'restaurant', radius: @search_radius, language: 'ja')

      results.each do |result|
        brewery_basic_info = BreweryBasicInfo.new(read(result))
        @brewery_basic_infos << brewery_basic_info
      end

      @brewery_basic_infos.each do |brewery_basic_info|
        brewery_basic_info.save unless BreweryBasicInfo.all.include?(brewery_basic_info)
      end
    end
  end

  private

  def read(result)
    # APIのレスポンスから必要なデータを抜き出し、対応するカラムにデータを格納する。
    name = result['name']
    address = result['formatted_address']
    latitude = result['lat']
    longitude = result['lng']
    googlemap_place_id = result['place_id']

    {
      name:,
      address:,
      latitude:,
      longitude:,
      googlemap_place_id:
    }
  end
end
