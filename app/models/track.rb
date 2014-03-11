class Track < ActiveRecord::Base
  belongs_to :album, counter_cache: true
  has_one :cover, as: :imagable, class_name: 'Image', dependent: :destroy
end
