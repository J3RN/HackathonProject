class Image < ActiveRecord::Base
  has_attached_file :image
  belongs_to :user
  def self.from_users_followed_by(user)
  	followed_user_ids = "SELECT followed_id FROM relationships WHERE follower_id = :user_id"
  	where("user_id IN (#{followed_user_ids})", user_id: user.id)
  end
  has_many :votes, dependent: :destroy
end
