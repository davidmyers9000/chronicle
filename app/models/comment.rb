class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :video

	validates :text, presence: true
end
