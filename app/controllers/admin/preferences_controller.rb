class Admin::PreferencesController < ApplicationController
    before_action :set_preferences, only: [:edit, :update]

    def index
        @preference = Preference.first
    end

    def edit
    end

    def update
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

    def set_preferences
        @preference = Preference.first
    end
end
