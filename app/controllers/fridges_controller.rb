class FridgesController < ApplicationController

    
    def index

        @fridge = Fridge.all


        #RECIPES :
        @recipes = JSON.parse(File.read('recipes.json'))
        

        # AJOUTE LES INGREDIENTS DANS UN TABLEAU
        @foods = []

        @fridge.each do |f|
            @foods.push(f.content)
        end


        @count = 0


        # AJOUTE LES RECETTES EN FONCTION DES INGREDIENTS DANS LE FRIGO
        @ingredientsOfRecipes = []

        @fridge.each do |f|
            @recipes.each do |item|
                item['ingredients'].each do |i|
                    if i.include? f.content
                        @ingredientsOfRecipes.push(item)
                    end
                end
            end
        end

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
        
        redirect_to action: "index"
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