Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#home"
    get "/about", to: "application#about"
    get "/products", to: "application#products"
    get "/cart", to: "application#cart"
    get "/profile", to: "application#profile"
end
