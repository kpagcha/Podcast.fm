class Episode < ActiveRecord::Base
	belongs_to :podcast

  	has_attached_file :thumbnail, styles: { large: "1000x1000#", medium: "500x500#" }
  	validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

  	has_attached_file :mp3
  	validates_attachment_content_type :mp3, content_type: [ "audio/mpeg", "audio/mp3" ]
  	validates_attachment_file_name :mp3, matches: [ /mp3\Z/ ]
end
