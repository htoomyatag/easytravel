class LocalTranspotationsController < ApplicationController
  before_action :set_local_transpotation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :index, :new]
  # GET /local_transpotations
  # GET /local_transpotations.json
  def index
    @local_transpotations = LocalTranspotation.all
  end

  # GET /local_transpotations/1
  # GET /local_transpotations/1.json
  def show
  end

  # GET /local_transpotations/new
  def new
    @local_transpotation = LocalTranspotation.new
  end

  # GET /local_transpotations/1/edit
  def edit
  end

  # POST /local_transpotations
  # POST /local_transpotations.json
  def create
    @local_transpotation = LocalTranspotation.new(local_transpotation_params)

    respond_to do |format|
      if @local_transpotation.save
        format.html { redirect_to @local_transpotation, notice: 'Local transpotation was successfully created.' }
        format.json { render :show, status: :created, location: @local_transpotation }
      else
        format.html { render :new }
        format.json { render json: @local_transpotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /local_transpotations/1
  # PATCH/PUT /local_transpotations/1.json
  def update
    respond_to do |format|
      if @local_transpotation.update(local_transpotation_params)
        format.html { redirect_to @local_transpotation, notice: 'Local transpotation was successfully updated.' }
        format.json { render :show, status: :ok, location: @local_transpotation }
      else
        format.html { render :edit }
        format.json { render json: @local_transpotation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_transpotations/1
  # DELETE /local_transpotations/1.json
  def destroy
    @local_transpotation.destroy
    respond_to do |format|
      format.html { redirect_to local_transpotations_url, notice: 'Local transpotation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_transpotation
      @local_transpotation = LocalTranspotation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def local_transpotation_params
      params.require(:local_transpotation).permit(:name, :price, :rank, :contact)
    end
end
