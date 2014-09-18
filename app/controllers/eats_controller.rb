class EatsController < ApplicationController
  before_action :signed_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy

  def create
    @eat = current_user.eats.build(eat_params)
    if @eat.save
      flash[:success] = "You have eaten a food and it is added to your items!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @eat.destroy
    redirect_to root_url
  end

  private

    def eat_params
      params.require(:eat).permit(:food, :amount, :carbohydrate, :sugar, :calories)
    end
  
    def correct_user
      @eat = current_user.eats.find_by(id: params[:id])
      redirect_to root_url if @eat.nil?
    end
end
