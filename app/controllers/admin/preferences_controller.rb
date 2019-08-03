class Admin::PreferencesController < ApplicationController
  def index
    @preference=Preference.all.first
  end
end
