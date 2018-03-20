class Testimonial < ApplicationRecord
	validates :name, presence: true
	validates :comment, presence: true, length: { maximum: 140 } 
end
