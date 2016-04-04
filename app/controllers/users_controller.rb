get '/' do
  erb :'/index'
end

get 'users/:id' do

  erb :'users/show'
end