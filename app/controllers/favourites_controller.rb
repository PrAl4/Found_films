class FavouritesController < ApplicationController
 
  
  def list_favourites
    @heading = 'Избранные фильмы'
    @aboutPage = 'Здесь вы можете посмотреть на список фильмов, которые понравились вам чуточку больше остальных :)'
  end

  def index
       @favorites = Favorite.all
  end

    def show
        @favorite = Favorite.find(params[:id])
    end

   def create
        @user = current_user
        @favorite = Favorite.new(user_id: @user.id, film_id: params["film"]["id"])
          if @favorite.save
            redirect_to user_path(@user), flash: {notice: " Вы добавили#{Film.find(params["film"]["id"]).title} to favorites!"}
           else
            redirect_to user_search_path(@user), flash: {alert: "Фильм уже добавлен в избранное"}
          end
   end

      def destroy
        @user = User.find(params[:id])
        Favorite.delete(params[:id])
        redirect_to user_path(@user)
    end

end
