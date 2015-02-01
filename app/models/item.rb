class Item < ActiveRecord::Base
	has_attached_file :avatar, :styles => {:small => "150x150>", :medium => "300x300>"} 
	#:url => "/assets/items/:id/:style/:basename.:extension",
	#:path => "rails_root/app/assets/items/:id/:style/:basename.:extension"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  do_not_validate_attachment_file_type :avatar
end
