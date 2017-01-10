class Song < ApplicationRecord
  belongs_to :playlist

  validates :title, :artist, presence: true
end
