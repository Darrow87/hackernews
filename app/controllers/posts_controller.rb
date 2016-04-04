get '/posts/new' do
  erb :'posts/new'
end

post '/posts' do
  @post = Post.new(params[:post])
  if @post.save
    redirect '/posts'
  else
    erb :'posts/new'
  end
end

get '/posts' do
  @posts = Post.all
  erb :'posts/index'
end

get '/post/:id' do
  @post = Post.find(params[:id])

  erb :'posts/show'
end

get '/post/:id/comments' do
  @post = Post.find_by(id: params[:id])
  @comments = @post.comments
  erb :'comments/index'
end


