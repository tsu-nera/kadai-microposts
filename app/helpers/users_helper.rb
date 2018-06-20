module UsersHelper
  def gravatar_url(user, option = { size:80})
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = option[:size]
    "https://secure.gravater.com/avater/#{gravatar_id}?s=#{size}"
  end
end
