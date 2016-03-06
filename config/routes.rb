Rails.application.routes.draw do
  scope '/api' do
    resources :companies, only: [:index]
  end

  root 'companies#index'
end
