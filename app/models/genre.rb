class Genre < ApplicationRecord
  has_many :songs
  has_many :artists, through: :songs

  validates :name, presence: true

  def to_s
    self.name
  end

end
