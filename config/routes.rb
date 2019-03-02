Rails.application.routes.draw do
  # scraping_html_elements
  get '/scraping_html_elements/new/:id', to: 'scraping_html_elements#new', as: :new_scraping_html_element
  resources :scraping_html_elements

  # scraping_pages
  namespace :scraping_pages do
    post 'htmls/create/:id', to: 'htmls#create', as: :create_htmls
  end
  resources :scraping_pages

  # scraped_codes
  get '/scraped_codes/new/:id', to: 'scraped_codes#new', as: :new_scraped_codes
  resources :scraped_codes, only: [:index, :create, :edit, :show, :update, :destroy]

  # diff_codes
  get '/diff_codes/new_latest/:id', to: 'diff_codes#new_latest', as: :new_diff_codes_latest
  get '/diff_codes/new/:id', to: 'diff_codes#new', as: :new_diff_codes
  resources :diff_codes, only: [:index, :create, :edit, :show, :update, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
