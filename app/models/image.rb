class Image < ActiveRecord::Base
	belongs_to :user
	belongs_to :album
	has_many :loves

	def self.save
		name = upload['image'].original_filename
		directory = "public/images"
		path = File.join(directory, name)
		file.open(path, "wb") {|f| f.write(upload['image'].read) }
	end
end
