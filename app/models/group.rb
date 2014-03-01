class Group < ActiveRecord::Base
	has_many :videos, dependent: :destroy
  
end
