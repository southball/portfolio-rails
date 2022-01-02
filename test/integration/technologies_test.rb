# frozen_string_literal: true

require 'test_helper'

class TechnologiesTest < ActionDispatch::IntegrationTest
  test 'OK when GET technology that exists' do
    get technology_url(technologies(:technology1))
    assert_response :success
    assert_template 'technologies/show'
  end

  test '404 when GET technology that does not exist' do
    get technology_url('not_found_technology_slug')
    assert_response :not_found
    assert_template 'application/404'
  end
end
