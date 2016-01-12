class AccountPetitionsController < ApplicationController
  before_action :set_account_petition, only: [:show, :edit, :update, :destroy]

  # GET /account_petitions
  # GET /account_petitions.json
  def index
    @account_petitions = AccountPetition.all
  end

  # GET /account_petitions/1
  # GET /account_petitions/1.json
  def show
  end

  # GET /account_petitions/new
  def new
    @account_petition = AccountPetition.new
  end

  # GET /account_petitions/1/edit
  def edit
  end

  # POST /account_petitions
  # POST /account_petitions.json
  def create
    @account_petition = AccountPetition.new(account_petition_params)

    respond_to do |format|
      if @account_petition.save
        format.html { redirect_to @account_petition, notice: 'Account petition was successfully created.' }
        format.json { render :show, status: :created, location: @account_petition }
      else
        format.html { render :new }
        format.json { render json: @account_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /account_petitions/1
  # PATCH/PUT /account_petitions/1.json
  def update
    respond_to do |format|
      if @account_petition.update(account_petition_params)
        format.html { redirect_to @account_petition, notice: 'Account petition was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_petition }
      else
        format.html { render :edit }
        format.json { render json: @account_petition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /account_petitions/1
  # DELETE /account_petitions/1.json
  def destroy
    @account_petition.destroy
    respond_to do |format|
      format.html { redirect_to account_petitions_url, notice: 'Account petition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account_petition
      @account_petition = AccountPetition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def account_petition_params
      params.require(:account_petition).permit(:title, :description)
    end
end
