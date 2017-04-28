class Album < ApplicationRecord
	validates :title, presence: true,
                   length: { minimum: 3 }
    validates :description, presence: true,
                   length: { minimum: 5 }
   	
	belongs_to :user
	has_many :photos, dependent: :destroy
	accepts_nested_attributes_for :photos
end
