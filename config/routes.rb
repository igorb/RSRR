Rails.application.routes.draw do
  resources :counters, only: [:index]

  scope '/api' do
    resources :companies, only: [:index]
  end

  root 'counters#index'
end
