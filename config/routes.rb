Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "rails_admin/main#dashboard"

  scope '/api', controller: 'base_api_controller' do
    post '/', action: 'show'
  end
end