class FridgesController < ApplicationController

    
    def index
        @fridge = Fridge.all
        #RECIPES :
        @data = JSON.parse(File.read('recipes.json'))

    end

    def result

    end

    def show
        @fridge = Fridge.find(params[:id])
    end
    
    def new
        @fridge = Fridge.new
    end
    
    def create
        fridge = Fridge.create(fridge_params)
    
        redirect_to action: "index"
    end
    
    def edit
        @fridge = Fridge.find(params[:id])
    end
    
    def update
        @fridge = Fridge.find(params[:id])
    
        @fridge.update(fridge_params)
    
        redirect_to fridge_path(@fridge)
    end
    
    def destroy
        @fridge = Fridge.find(params[:id])
        @fridge.destroy
    
        redirect_to fridges_path
    end
    
    private
    
    def fridge_params
        params.require(:fridge).permit(:content)
    end
    
  
end