# frozen_string_literal: true

Rails.application.routes.draw do
  get 'brewery_basic_infos', to: 'places_api_nearby_search#index'
  get 'brewery_additional_infos', to: 'brewery_additional_infos#index'
end
