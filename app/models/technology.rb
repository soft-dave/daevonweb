class Technology < ApplicationRecord
	has_and_belongs_to_many :portfolios, class_name: "Portfolio",
    foreign_key: "technology_id", 
    join_table: "technologies_portfolios",
    association_foreign_key: "portfolio_id"
	validates :title, presence: true
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, 
	                        :url => "/system/technologies/:id_partition/:id/:style/:basename.:extension",  
	                        :path => ":rails_root/public/system/technologies/:id_partition/:id/:style/:basename.:extension"
	validates_attachment_content_type :photo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
