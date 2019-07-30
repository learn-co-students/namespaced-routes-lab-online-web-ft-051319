class Admin::PreferencesController < ApplicationController
    def index
        @preference = Preference.first
    end

    def edit
        @preference = Preference.first
    end

    def update
        @preference = Preference.find(params[:id])
        if @preference.update(preference_params)
            redirect_to admin_preferences_path
        else
            render :edit, alert: "Preferences did not update."
        end
    end

    private

    def preference_params
        params.require(:preference).permit(:artist_sort_order, :song_sort_order, :allow_create_artists, :allow_create_songs)
    end
end
