Rails.application.routes.draw do
  root 'dashboards#show'
  get 'dashboards/show'
end
