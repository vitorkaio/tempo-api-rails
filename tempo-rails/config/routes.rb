Rails.application.routes.draw do
  get 'teste/index'

  # redenriza a pagina temp.html.erb(action)
  get '/tempo', to: 'teste#temp'

  # define a ação tempo do controller teste com post
  #post '/tempo', to: 'teste#tempo'

  #Para passar com query na url t?cidade=santos
  get '/temp', to: 'teste#tempo'

  root 'teste#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
