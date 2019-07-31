class Preference < ApplicationRecord

    def self.new_artist
      self.first.allow_create_artists
    end

    def self.new_song
      self.first.allow_create_songs
    end

end
