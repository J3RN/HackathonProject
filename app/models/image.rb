class Image < ActiveRecord::Base
	belongs_to :user
	belongs_to :album
	has_many :loves

end
