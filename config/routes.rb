Rails.application.routes.draw do

  resources :fridges


  #controller/action
  root to: "food#index"
  
end
