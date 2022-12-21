class FavouritesController < ApplicationController
  def list_favourites
    @heading = 'Избранные фильмы'
    @aboutPage = 'Здесь вы можете посмотреть на список фильмов, которые понравились вам чуточку больше остальных :)'
  end

  def index
  end
end
