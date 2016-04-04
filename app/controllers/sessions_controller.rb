get '/login' do
  erb :'sessions/new'
end

post '/login' do
  user = User.find_by(name: params[:user][:name])
      # binding.pry
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/'
    else
      @errors = ["Wrong name, email, or password"]
      erb :'sessions/new'
    end
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/users' do
  # binding.pry
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  # binding.pry
  if user.save
    session[:user_session_id] = user.id
    # binding.pry
    redirect '/'
  else
    @errors = user.errors.full_messages
    erb :'/users/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
