Rails.application.routes.draw do
  
  #rotas do usuario.
  resources :users
  
  #rotas da sessão
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
  
  #rota principal
  root 'sessions#new'

end 