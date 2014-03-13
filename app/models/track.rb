class Track < ActiveRecord::Base
  belongs_to :album, counter_cache: true
  has_attached_file :cover, 
                    default_url: 'assets/iTunes.png',
                    :url => "/assets/tracks/:id/:basename.:extension",  
                    :path => ":rails_root/public/assets/tracks/:id/:basename.:extension"  
  
  has_attached_file :song,
                    default_url: '',
										:url => "/assets/tracks/:id/:basename.:extension",  
  									:path => ":rails_root/public/assets/tracks/:id/:basename.:extension"  
  
	validates_attachment_content_type :cover, 
																		:content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates_attachment_content_type :song,
                                    :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]
  
end
