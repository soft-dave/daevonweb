class AddAttachmentCoverPhotoToPortfolios < ActiveRecord::Migration[5.1]
  def self.up
    change_table :portfolios do |t|
      t.attachment :cover_photo
    end
  end

  def self.down
    remove_attachment :portfolios, :cover_photo
  end
end
