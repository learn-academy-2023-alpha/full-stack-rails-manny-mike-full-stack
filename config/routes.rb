Rails.application.routes.draw do
 #HTTP verb, url(location), hash rocket, controller, method
 get '/blogs' => 'blog#index', as: 'blogs'
 get '/blogs/new' => 'blog#new', as: 'new_blog'
 get '/blogs/:id' => 'blog#show', as: 'blog'
 get '/blogs/:id/edit' => 'blog#edit', as: 'edit_blog'
 post '/blogs' => 'blog#create'
 

end
