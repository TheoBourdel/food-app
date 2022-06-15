require "json"

class FoodController < ApplicationController

    def index

        @data = JSON.parse(File.read('recipes.json'))
        
        
    end

    

end