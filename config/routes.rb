Rails.application.routes.draw do
 #HTTP verb, url(location), hash rocket, controller, method
 get '/blogs' => 'blog#index', as: 'blogs'
 get '/blogs/:id' => 'blog#show', as: 'blog'
end
