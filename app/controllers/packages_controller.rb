class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]
  layout :layout_per_action
  # GET /packages
  # GET /packages.json
  def index
    @packages = Package.all
  end

  def dashboard

  end

  def home
     @travel_packages = TravelPackage.all
     @destinations = Destination.all
     @package = Package.new
  end


  # GET /packages/1
  # GET /packages/1.json
  def show
  end

  # GET /packages/new
  def new
    @package = Package.new

    @hotel = Hotel.all(:conditions => {:id => 1})
    @hotel_list=[]
    @hotel.each do |c|
      @hotel_list << [c.name,c.id]
    end

  end

  # GET /packages/1/edit
  def edit
  end

  # POST /destinations
  # POST /destinations.json
  def create
    @package = Package.new(package_params)

    respond_to do |format|
      if @package.save
        format.html { redirect_to @package, notice: 'Package was successfully created.' }
        format.json { render :show, status: :created, location: @package }
      else
        format.html { render :new }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /destinations/1
  # PATCH/PUT /destinations/1.json
  def update
    respond_to do |format|
      if @package.update(package_params)
        format.html { redirect_to @package, notice: 'Package was successfully updated.' }
        format.json { render :show, status: :ok, location: @package }
      else
        format.html { render :edit }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /destinations/1
  # DELETE /destinations/1.json
  def destroy
    @package.destroy
    respond_to do |format|
      format.html { redirect_to packages_url, notice: 'Package was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def package_params
      params.require(:package).permit(:destination_id, :airfare_id, :local_transpotation_id, :guide_id, :travel_detail, :hotel_id, :from_date, :to_date, :no_of_child, :no_of_adult)
    end



    def layout_per_action
      if action_name == "dashboard"
          "application"
      else
          "frontend"
      end
    end

end
