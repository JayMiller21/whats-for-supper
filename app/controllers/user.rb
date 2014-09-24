before "/user/*" do
# before %r{/user/([\d]+)([\/]?)([\w]+)} do
  current_user
  @hello = "hello"
  # @page_owner = User.find(params[:id]) #QUESTION: I couldn't figure out how I could refer to params[:id] in here.
end

get "/user/new" do
  erb :"user/new"
end

get "/user/:id" do
  @user_id = params[:id].to_i
  @user = User.find(@user_id)
  @recipes = @user.recipes
  erb :"/user/show"
end

post "/user/new" do
  unless User.find_by(name: params[:user][:name])

    user = User.create(name: params[:user][:name], password: params[:user][:password])
    session[:error] = nil
    redirect to "/user/#{user.id}"
  end
    session[:error] = "User with that name already exists."
    redirect to "/login"
end

get "/user/:id/edit" do

  erb :"user/show"
end

get "/user/:id/recipes" do

  erb :"recipe/index"
end
