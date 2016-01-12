class RepportsController < ApplicationController
  before_action :set_repport, only: [:show, :edit, :update, :destroy]

  # GET /repports
  # GET /repports.json
  def index
    @repports = Repport.all
  end

  # GET /repports/1
  # GET /repports/1.json
  def show
  end

  # GET /repports/new
  def new
    @repport = Repport.new
  end

  # GET /repports/1/edit
  def edit
  end

  # POST /repports
  # POST /repports.json
  def create
    @repport = Repport.new(repport_params)

    respond_to do |format|
      if @repport.save
        format.html { redirect_to @repport, notice: 'Repport was successfully created.' }
        format.json { render :show, status: :created, location: @repport }
      else
        format.html { render :new }
        format.json { render json: @repport.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repports/1
  # PATCH/PUT /repports/1.json
  def update
    respond_to do |format|
      if @repport.update(repport_params)
        format.html { redirect_to @repport, notice: 'Repport was successfully updated.' }
        format.json { render :show, status: :ok, location: @repport }
      else
        format.html { render :edit }
        format.json { render json: @repport.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repports/1
  # DELETE /repports/1.json
  def destroy
    @repport.destroy
    respond_to do |format|
      format.html { redirect_to repports_url, notice: 'Repport was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repport
      @repport = Repport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repport_params
      params.require(:repport).permit(:title, :date, :preview, :description)
    end
end
