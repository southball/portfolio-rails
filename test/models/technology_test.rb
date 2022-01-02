# frozen_string_literal: true

require 'test_helper'

class TechnologyTest < ActiveSupport::TestCase
  def setup
    @technology1 = technologies(:technology1)
    @technology2 = technologies(:technology2)
  end

  test 'default technology is valid' do
    assert @technology1.valid?
  end

  test 'technology must have name' do
    @technology1.name = ''
    assert_not @technology1.valid?
  end

  test 'technology must have slug' do
    @technology1.slug = ''
    assert_not @technology1.valid?
  end

  test 'technology must have icon URL' do
    @technology1.icon_url = ''
    assert_not @technology1.valid?
  end

  test 'technology must have unique slug' do
    @technology2.slug = @technology1.slug
    assert_not @technology2.valid?
  end
end
