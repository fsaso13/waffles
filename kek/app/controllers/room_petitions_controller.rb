class RoomPetitionsController < ApplicationController
  before_action :set_room_petition, only: [:show, :edit, :update, :destroy]

  # GET /room_petitions
  # GET /room_petitions.json
  def index
    @room_petitions = RoomPetition.all
  end

  # GET /room_petitions/1
  # GET /room_petitions/1.json
  def show
  end

  # GET /room_petitions/new
  def new
    @room_petition = RoomPetition.new
  end

  # GET /room_petitions/1/edit
  def edit
  end

  # POST /room_petitions
  # POST /room_petitions.json
  def create
    @room_petition = RoomPetition.new(room_petition_params)

    respond_to do |format|
      if @room_petition.save
        format.html { redirect_to @room_petition, notice: 'Room petition was successfully created.' }
        format.json { render :show, status: :created, location: @room_petition }
      else
        format.html { render :new }
        format.json { render json: @room_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_petitions/1
  # PATCH/PUT /room_petitions/1.json
  def update
    respond_to do |format|
      if @room_petition.update(room_petition_params)
        format.html { redirect_to @room_petition, notice: 'Room petition was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_petition }
      else
        format.html { render :edit }
        format.json { render json: @room_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_petitions/1
  # DELETE /room_petitions/1.json
  def destroy
    @room_petition.destroy
    respond_to do |format|
      format.html { redirect_to room_petitions_url, notice: 'Room petition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_petition
      @room_petition = RoomPetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_petition_params
      params.require(:room_petition).permit(:user_id, :room_id, :occupied)
    end
end
