class PositionsController < ApplicationController
    before_action :set_positon, only: [:show, :update, :destory]

    # GET /positions
    def index
        @positions = Position.all
        render json: @positions
    end

    # GET /positions/1
    def show
        render json: @position
    end

    # POSTS /posts
    def create
        @position = Position.new(position_params)

        if @position.save
            render json: @position, status: :created, location: @position
        else   
            render json: {errors: @position.errors.full_messages.to_sentence}
        end
    end

    # PATCH/PUT /positions/1
    def update
        if @positon.update(position_params)
            render json: @position
        else   
            render json: {errors: @position.errors.full_messages.to_sentence}
        end
    end

    # DELETE /positions/1
    def destory
        @position.destory
    end

    private 

        def set_positon
            @position = Position.find(params[:id])
        end

        def position_params
            params.require(:position).permit(:company_name, :title, :location, :description, :applied, :applied_date)
        end
end