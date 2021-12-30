Rails.application.routes.draw do
  resources 'projects', param: :slug
  root 'application#hello'
end
