get '/recipe/new' do

  erb :'recipe/new'
end

get '/recipe/:id' do

  erb :'recipe/show'
end

get '/recipe/:id/edit' do

  erb :'recipe/show'
end
