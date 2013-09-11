helpers do
  def tweet(message)
    twitter_user.update(message)
  end

  def current_user
    User.find(session[:user_id])
  end

  def twitter_user
    Twitter::Client.new(
      :oauth_token => current_user.oauth_token,
      :oauth_token_secret => current_user.oauth_secret
      )
  end
end