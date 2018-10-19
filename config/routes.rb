Rails.application.routes.draw do
  resource :authors
  resource :posts, only: [:index, :show, :create, :update, :new, :edit]
end
