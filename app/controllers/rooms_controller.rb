class RoomsController < ApplicationController
#カテゴリー分けに関連するところのみ記載
  def index
    @rooms = Room.all
  end 

  
  def new
    @room = Room.new
  end

  def create
    room = Room.new(room_params)
    if room.save!
      redirect_to :action => "index"
    else
      redirect_to :action => "new"
    end
  end

  def dog
    @rooms = room.all
  end

  def cat
    @rooms = room.all
  end

  def hadakadebanezumi
    @rooms = room.all
  end

  private
  def room_params
    params.require(:room).permit(:name, :image, :address, :genre, :about)
  end

  

  
end


