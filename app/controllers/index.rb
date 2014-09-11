get '/' do
  session[:error] = nil
  erb :'/index'
end

get "/login" do
  erb :"/login"
end

post "/login" do
  user = User.find_by(name: params[:user][:name])
  if user && user.authenticate(params[:user][:password])
    session[:current_user_id] = user.id
    session[:error] = nil
    redirect to "/user/#{user.id}"
  else
    session[:error] = "username or password incorrect."
    redirect to "/login"
  end
end

get "/logout" do
  session.clear
  redirect to "/"
end
