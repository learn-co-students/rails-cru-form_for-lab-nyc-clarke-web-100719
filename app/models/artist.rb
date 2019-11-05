class Artist < ApplicationRecord
    has_many :songs
    has_many :genres, through: :songs

    def full_info
        self.name + ":=>" + self.bio
    end
end
