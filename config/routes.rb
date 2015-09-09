Rails.application.routes.draw do
	devise_for :podcasts
    root to: 'welcome#index'

    resources :podcasts, only: [ :index, :show ]
end