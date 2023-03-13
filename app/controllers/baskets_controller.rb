class BasketsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!, only: [:new, :create, :edit, :update, :destroy]



  def index
    @baskets = Basket.all
  end

  def show
    @basket = Basket.find(params[:id])
  end

  def new
    @basket = Basket.new
  end

  def create
    @basket = Basket.new(basket_params)
    if @basket.save
      redirect_to @basket
    else
      render 'new'
    end
  end

  def edit
    @basket = Basket.find(params[:id])
  end

  def update
    @basket = Basket.find(params[:id])
    if @basket.update(basket_params)
      redirect_to @basket
    else
      render 'edit'
    end
  end

  def destroy
    @basket = Basket.find(params[:id])
    @basket.destroy
    redirect_to baskets_path
  end

  private

  def basket_params
    params.require(:basket).permit(:user_id, :product_id, :quantity)
  end
end
