# frozen_string_literal: true

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  def setup
    @project1 = projects(:project1)
    @project2 = projects(:project2)
  end

  test 'default project is valid' do
    assert @project1.valid?
  end

  test 'project must have title' do
    @project1.title = ''
    assert_not @project1.valid?
  end

  test 'project must have slug' do
    @project1.slug = ''
    assert_not @project1.valid?
  end

  test 'slug must be unique' do
    assert @project2.valid?
    @project2.slug = @project1.slug
    assert_not @project2.valid?
  end
end
