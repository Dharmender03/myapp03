class Tag < ApplicationRecord
	has_and_belongs_to_many :photos
	validates_presence_of :title
end
