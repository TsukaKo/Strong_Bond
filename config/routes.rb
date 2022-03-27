Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources:users, only:[:show, :edit, :update, :destroy]
  resources:groups, only:[:new, :index, :edit, :create]
  resources:posts, only:[:new, :create, :edit, :update, :index, :show, :destroy] do
    resources:comments, only:[:new, :create, :edit, :update, :destroy]
  end
  patch 'groups', to: 'groups#update', as: 'group'
  get 'groups/:id', to: 'groups#show', as: 'group_show'
end
