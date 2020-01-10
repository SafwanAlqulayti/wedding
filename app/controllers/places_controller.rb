class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  # GET /places.json
  def index
    @places = Place.all

   end

  # GET /places/1
  # GET /places/1.json
  def show 
    @place = Place.find(params[:id]) 
    render json: {status:'SUCCESS',message:'Louded place',data:@place},status: :ok


  end

  # GET /places/new
  def new
    @place = Place.new
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  # POST /places.json
  def create
    @place = Place.new(place_params)

 
       @place.save
 
       
 
  end

  # PATCH/PUT /places/1
  # PATCH/PUT /places/1.json
  def update
   
    
    
     
  end

  # DELETE /places/1
  # DELETE /places/1.json
  def destroy
    @place.destroy
     
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_params
      params.require(:place).permit(:name,:locathion,:img)
    end
end
