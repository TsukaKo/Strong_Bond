Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources:users, only:[:show, :index, :edit, :update, :destroy]
  resources:groups, only:[:new, :index, :edit, :create]
  resources:posts, only:[:new, :create, :edit, :update, :index, :show]
  resources:comments, only:[:new, :create, :edit, :update, :destroy]
  patch 'groups', to: 'groups#update', as: 'group'
end
