class Topic < ActiveRecord::Base

	has_many :videos, dependent: :destroy
end
