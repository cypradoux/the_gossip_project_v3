class CityController < ApplicationController
    def show
        index = params[:id].to_i
        @element = User.all[index - 1]
        @city = @element.city
    end

    def index
    end

    def create
    end

    def update
    end

    def edit
    end

    def new
    end

    def destroy
    end
end
