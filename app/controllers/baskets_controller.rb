class BasketsController < ApplicationController

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

end
