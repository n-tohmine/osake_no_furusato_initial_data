# frozen_string_literal: true

require 'test_helper'

class BreweryBasicInfosControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get brewery_basic_infos_index_url
    assert_response :success
  end
end
