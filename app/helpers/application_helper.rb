module ApplicationHelper
  def gravator(email)
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
