class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  validates :name, :artist_id, :genre_id, presence: true

  def to_s
    self.name
  end

end
