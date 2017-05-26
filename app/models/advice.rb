class Advice < ApplicationRecord
	belongs_to :report, optional: true
end
