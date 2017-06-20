Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/' => 'hipsters#index'
	get '/hipsters' => 'hipsters#index'
	get '/hipsters' => 'hipsters#create'

	namespace :api do
		
		namespace :v1 do
			get '/hipster' => 'hipsters#index'
			post '/hipster' => 'hipsters#create'
			get '/hipster/:id' => 'hipsters#show'
			
		end

		namespace :v2 do
			get '/hipster' => 'hipsters#index'
			post '/hipster' => 'hipsters#create'
			get '/hipster/:id' => 'hipsters#show'
			
		end
	end

end
