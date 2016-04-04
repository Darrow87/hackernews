

post '/comments' do
binding.pry
  Comment.create(content: params[:comment][:content], post_id: params[:comment][:post_id], user_id: current_user.id)
  current_user.comments.create(params[:comment])
  User.create

  redirect '/post/:id'
end
