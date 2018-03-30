class Portfolio < ApplicationRecord
	has_and_belongs_to_many :technologies, class_name: "Technology",
    foreign_key: "portfolio_id", 
    join_table: "technologies_portfolios",
    association_foreign_key: "technology_id"
  
  accepts_nested_attributes_for :technologies
  
  validates :title, presence: true
  validates :description, presence: true
  has_attached_file :cover_photo, styles: { medium: "300x300>", thumb: "100x100>" }, 
                            :url => "/system/portfolios/:id_partition/:id/:style/:basename.:extension",  
                            :path => ":rails_root/public/system/portfolios/:id_partition/:id/:style/:basename.:extension"
  validates_attachment_content_type :cover_photo, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  # def previous
  #   Portfolio.where(["id < ?", id]).last
  # end

  # def next
  #   Portfolio.where(["id > ?", id]).first
  # end

  def self.next(portfolio)
    where('id < ?', portfolio.id).last
  end

  def self.previous(portfolio)
    where('id > ?', portfolio.id).first
  end
end
