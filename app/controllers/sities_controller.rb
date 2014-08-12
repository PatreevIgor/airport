class SitiesController < ApplicationController
  before_action :set_sity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  layout 'input'
  # GET /sities
  # GET /sities.json
  def index
    @sities = Sity.all
  end

  # GET /sities/1
  # GET /sities/1.json
  def show
    
  end

  # GET /sities/new
  def new
    @sity = Sity.new
    
  end

  # GET /sities/1/edit
  def edit
    
  end

  # POST /sities
  # POST /sities.json
  def create
    @sity = Sity.new(sity_params)

    respond_to do |format|
      if @sity.save
        format.html { redirect_to @sity, notice: 'Sity was successfully created.' }
        format.json { render :show, status: :created, location: @sity }
      else
        format.html { render :new }
        format.json { render json: @sity.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PATCH/PUT /sities/1
  # PATCH/PUT /sities/1.json
  def update
    respond_to do |format|
      if @sity.update(sity_params)
        format.html { redirect_to @sity, notice: 'Sity was successfully updated.' }
        format.json { render :show, status: :ok, location: @sity }
      else
        format.html { render :edit }
        format.json { render json: @sity.errors, status: :unprocessable_entity }
      end
    end
   
  end

  # DELETE /sities/1
  # DELETE /sities/1.json
  def destroy
    @sity.destroy
    respond_to do |format|
      format.html { redirect_to sities_url, notice: 'Sity was successfully destroyed.' }
      format.json { head :no_content }
    end
 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sity
      @sity = Sity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sity_params
      params.require(:sity).permit(:name, :x, :y)
    end
end
