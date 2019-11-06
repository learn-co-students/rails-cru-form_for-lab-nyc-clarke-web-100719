class Artist < ApplicationRecord
  has_many :songs
  has_many :genres, through: :songs

  validates :name, :bio, presence: true

  def to_s
    self.name + " " + self.bio
  end

end
