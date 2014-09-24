# before "/user/*" do
# # before %r{/user/([\d]+)([\/]?)([\w]+)} do
#   current_user
#   @hello = "hello"
#   # @page_owner = User.find(params[:id]) #QUESTION: I couldn't figure out how I could refer to params[:id] in here.
# end

before "/user/:id" do
  current_user
end

get "/user/:id" do
  @user_id = params[:id].to_i
  @user = User.find(@user_id)
  @recipes = @user.recipes
  p session
  erb :"/user/show"
end

get "/user/:id/dashboard" do
  @user_id = params[:id].to_i
  @user = User.find(@user_id)
  @recipes = @user.recipes
  if @user_id == session[:current_user_id]
    erb :"/user/dashboard"
  else
    redirect to :"/user/#{@user_id}"
  end
end
