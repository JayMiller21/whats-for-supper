get '/user/new' do

  erb :'user/new'
end

get '/user/:id' do

  erb :'user/show'
end

get '/user/:id/edit' do

  erb :'user/show'
end

get '/user/:id/recipes' do

  erb :'recipe/index'
end
