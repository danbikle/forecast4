Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/blog'
  get 'pages/contact'
  get 'pages/index'
  get 'pages/forecasts'
  get 'pages/backtests'
  get 'pages/software'
  get 'pages/training'
  get 'pages/newsletter'
  get  'home/index'
  root 'home#index'
  get  '/about',   to: 'pages#about'
  get  '/blog',    to: 'pages#blog'
  get  '/contact', to: 'pages#contact'

  get  '/forecasts', to: 'pages#forecasts'
  get  '/backtests', to: 'pages#backtests'
  get  '/software',  to: 'pages#software'
  get  '/training',  to: 'pages#training'
  get  '/newsletter',to: 'pages#newsletter'

  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
end
