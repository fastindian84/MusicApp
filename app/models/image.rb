class Image < ActiveRecord::Base
  belongs_to :imagable, polymorphic: true
  has_attached_file :cover

end
