class Group < ActiveRecord::Base
	has_many :videos, dependent: :destroy

  has_many :subscriptions
  has_many :users, through: :subscriptions
  
end
