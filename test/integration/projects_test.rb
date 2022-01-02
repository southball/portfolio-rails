# frozen_string_literal: true

require 'test_helper'

class ProjectsTest < ActionDispatch::IntegrationTest
  test 'OK when GET project that exists' do
    get project_url(projects(:project1))
    assert_response :success
    assert_template 'projects/show'
  end

  test '404 when GET project that does not exist' do
    get project_url('not_found_project_slug')
    assert_response :not_found
    assert_template 'application/404'
  end
end
