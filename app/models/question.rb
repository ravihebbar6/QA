class Question < ActiveRecord::Base

  def gravator
    "https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(email)}"
  end
end
