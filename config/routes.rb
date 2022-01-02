# frozen_string_literal: true

Rails.application.routes.draw do
  resources 'projects', param: :slug, only: [:show, :index]
  root 'projects#index'
end
