class AddAttachmentsToImages < ActiveRecord::Migration
  def change
  	add_attachment :images, :cover
  end
end
