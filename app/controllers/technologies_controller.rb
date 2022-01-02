# frozen_string_literal: true

class TechnologiesController < ApplicationController
  def show
    @technology = Technology.find_by(slug: params[:slug])
  end
end
