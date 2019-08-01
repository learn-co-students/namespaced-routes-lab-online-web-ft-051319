class Admin::PreferencesController < ApplicationController

    def index
        @preference = Preference.first_or_create(allow_create_artists: true, allow_create_songs: true, song_sort_order: "ASC", artist_sort_order: "DESC")
    end

    def update
        @preference = Preference.find(params[:id])
        @preference.update(params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort_order, :artist_sort_order))
        redirect_to admin_preferences_path
    end


end
