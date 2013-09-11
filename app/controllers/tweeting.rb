post '/tweet/new' do
  tweet(params[:tweet])
  redirect "/"
end