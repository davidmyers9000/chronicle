class Video < ActiveRecord::Base
  belongs_to :topic

  validates :source,      presence: true
  validates :title,       presence: true
  validates :description, presence: true
end
