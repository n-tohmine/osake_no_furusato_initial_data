# frozen_string_literal: true

class BreweryAdditionalInfosController < ApplicationController
  def index
    # BreweryBasicInfoのgooglemap_place_idを元に追加データをPlacesAPIで取得。
    api_key = Rails.application.credentials.google[:api_key]
    client = GooglePlaces::Client.new(api_key)

    @brewery_additional_infos = []

    breweries = BreweryBasicInfo.all
    breweries.each do |brewery|
      @googlemap_place_id = brewery.googlemap_place_id
      result = client.spot(@googlemap_place_id,
                           fields: %w[place_id formatted_phone_number formatted_address website photos], language: 'ja')

      brewery_additional_info = BreweryAdditionalInfo.new(read(result))
      @brewery_additional_infos << brewery_additional_info

      @brewery_additional_infos.each do |brewery_additional_info|
        brewery_additional_info.save unless BreweryAdditionalInfo.all.include?(brewery_additional_info)
      end
    end
  end

  private

  def read(result)
    # APIのレスポンスから必要なデータを抜き出し、対応するカラムにデータを格納する。
    googlemap_place_id = result['place_id']
    phone_number = result['formatted_phone_number']
    website_url = result['website']
    photo_reference = result['photos']
    {
      googlemap_place_id:,
      phone_number:,
      website_url:,
      photo_reference:
    }
  end
end
