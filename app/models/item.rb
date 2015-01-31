class Item < ActiveRecord::Base
	has_attached_file :avatar, :styles => {:medium => "300x300>"}, 
	:url => "/assets/items/:id/:style/:basename.:extension",
	:path => "rails_rooot/app/assets/items/:id/:style/:basename.:extension"
  #validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
