class BukkensController < ApplicationController
    before_action :authenticate_user!, except: [:index, :new]
    def index
        @bukkens = Bukken.order(osusume: :asc)
    end 
    def new
        @bukken = Bukken.new
    end
    def show
        @bukken= Bukken.find(params[:id])
        @comments = @bukken.comments
        @comment = Comment.new
    end
    def create
        bukken = Bukken.new(bukken_params)
        bukken.user_id = current_user.id
        if bukken.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
    end
    def edit
        @bukken = Bukken.find(params[:id])
    end
    def update
        bukken = Bukken.find(params[:id])
        if bukken.update(bukken_params)
          redirect_to :action => "show", :id => bukken.id
        else
          redirect_to :action => "new"
        end
    end
    def destroy
      bukken = Bukken.find(params[:id])
      bukken.destroy
      redirect_to action: :index
    end


  
    private
    def bukken_params
        params.require(:bukken).permit(:name, :image, :address, :genre, :about, :lat, :lng, :osusume)
    end
end
