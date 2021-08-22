Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'site#index'

  get '/deputado', to: 'deputados#index'
  get '/deputado/:id', to: 'deputados#show', as: :despesas_deputado

  get '/carregar', to: 'arquivos#index'
  post '/carregar', to: 'arquivos#import'
end
