module ApplicationHelper
  def gravator(email)
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end

  def current_user_email
    session[:current_user_email]
  end
end
