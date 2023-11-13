class Post < ApplicationRecord
  belongs_to :user
  acts_as_taggable_on :tags

  validates :title, presence: true
end
