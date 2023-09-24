# frozen_string_literal: true

require 'test_helper'

class PlacesApiNearBySearchControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get places_api_near_by_search_index_url
    assert_response :success
  end
end
