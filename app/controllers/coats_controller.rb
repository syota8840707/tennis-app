class CoatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @costs = Coat.all
    # @coat = Item.order('created_at DESC')
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

  private
  def coat_params
    params.require(:coat).permit(:image, :name, :prefecture_id, :city, :address, :start_time_id, :finish_time_id, :number_id, :info).merge(user_id: current_user.id)
                                
  end  
end
