class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @countries = Country.all
    @currencies = Currency.all
  end
end
