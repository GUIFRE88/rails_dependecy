Rails.application.routes.draw do
  resources :pedidos do
    resources :item_pedidos
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
