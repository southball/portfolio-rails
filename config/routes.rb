# frozen_string_literal: true

Rails.application.routes.draw do
  resources 'projects', param: :slug, only: %i[show index]
  resources 'technologies', param: :slug, only: [:show]
  root 'projects#index'
end
