class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :movie, presence: true, allow_nil: false
  validates :list, presence: true, allow_nil: false
  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :list, scope: :movie
end
