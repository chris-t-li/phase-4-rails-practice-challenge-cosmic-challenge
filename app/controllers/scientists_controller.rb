class ScientistsController < ApplicationController

    # GET /scientists
    def index
        render json: Scientist.all, status: :ok
    end

    # GET /scientists/:id
    def show
        scientist = Scientist.find(params[:id])
        render json: scientist, serializer: WithPlanetSerializer, status: :ok
    end

    # POST /scientists
    def create
        scientist = Scientist.create!(scientist_params)
        render json: scientist, status: :created
    end

    # PATCH / scientists/:id
    def update
        scientist = Scientist.find(params[:id])
        scientist.update!(scientist_params)
        render json: scientist, status: :accepted
    end

    # DELETE / scientists/:id
    def destroy
        scientist = Scientist.find(params[:id])
        scientist.destroy
        head :no_content
    end

    private

    def scientist_params
        params.permit(:name, :field_of_study, :avatar)
    end
end
