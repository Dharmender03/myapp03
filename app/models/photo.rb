class Photo < ApplicationRecord
    has_attached_file :image
    validates_attachment :image,content_type:{content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]}
	belongs_to :album
	has_and_belongs_to_many :tags
end
