class CoatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_coat, only: [:show, :edit, :update]
  def index
    @costs = Coat.all
    @coats = Coat.order('created_at DESC')
  end

  def new
    @coat = Coat.new
  end

  def create
    @coat = Coat.new(coat_params)
    if @coat.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @coats = Coat.all
  end

  def edit
  end

  def update  
    if @coat.update(coat_params)
      redirect_to coat_path
    else
      render :edit
    end
  end
  private

  def coat_params
    params.require(:coat).permit(:image, :name, :prefecture_id, :city, :address, :start_time_id, :finish_time_id, :number_id,
                                 :info).merge(user_id: current_user.id)
  end
  def set_coat
    @coat = Coat.find(params[:id])
  end
end
