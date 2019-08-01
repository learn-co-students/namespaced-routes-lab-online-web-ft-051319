class AddColumnsToPreferences < ActiveRecord::Migration[5.0]
  def change
    add_column :preferences, :song_sort_order, :string
    add_column :preferences, :allow_create_artists, :boolean
    add_column :preferences, :allow_create_songs, :boolean
    add_column :preferences, :artist_sort_order, :string
  end
end
