class Country < ApplicationRecord
	belongs_to :leader
	has_many :regions
end
