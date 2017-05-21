class Lawyer < ApplicationRecord
	has_many :questions

	has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "scales.png" 

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
