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
	# validates_attachment_content_type :song,
                                    # :content_type => [ 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ] , :if => :sound_attached?
  
# before_validation :convert_to_mp3

# def reconvert_to_mp3
#   wavfile = Tempfile.new(".wav")
#   wavfile.binmode

#   open(wav.url) do |f|
#     wavfile << f.read
#   end

#   wavfile.close

#   convert_tempfile(wavfile)
# end

# def convert_to_mp3
#   tempfile = wav.queued_for_write[:original]

#   unless tempfile.nil?
#     convert_tempfile(tempfile)
#   end
# end

# def convert_tempfile(tempfile)
#   dst = Tempfile.new(".mp3")

#   cmd_args = [File.expand_path(tempfile.path), File.expand_path(dst.path)]
#   system("lame", *cmd_args)

#   dst.binmode
#   io = StringIO.new(dst.read)
#   dst.close

#   io.original_filename = "sound.mp3"
#   io.content_type = "audio/mpeg"

#   self.mp3 = io
# end

  
  
  # def sound_attached?
  #   self.song.file?
  # end

# def fetch_media_length
#     duration_in_seconds = 1.0

#     begin
#       uploaded_file_path = sound_file.queued_for_write[:original].path

#       duration_in_seconds = FFMPEGWrapper.duration_in_seconds(uploaded_file_path)
#     end

#     self.duration = duration_in_seconds     
#   end

end
