class PositionsController < ApplicationController

    def index
        positions = Position.all
        render json: positions: [:title, :company_name, :location]
    end

    def show
        position = Position.find_by_id(id: params[:id])
        render json: position
    end

    def edit
        
    end
end