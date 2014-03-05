class Video < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  validates :source,      presence: true
  validates :title,       presence: true
  validates :description, presence: true

end
