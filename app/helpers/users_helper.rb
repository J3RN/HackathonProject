module UsersHelper
	def gravatar_for(user)
	    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
	    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=400"
	    image_tag(gravatar_url, alt: user.email, class: "gravatar")
	end
  def gravatar_small_for(user)
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=40"
      image_tag(gravatar_url, alt: user.email, class: "gravatar-top")
  end
end
