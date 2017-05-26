class Report < ApplicationRecord
	belongs_to :advice, optional: true
end