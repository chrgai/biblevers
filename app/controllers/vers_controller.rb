class VersController < ApplicationController
  before_action :set_ver, only: [:show, :edit, :update, :destroy]

  # GET /vers
  # GET /vers.json
  def index
    @vers = Ver.all
  end

  # GET /vers/1
  # GET /vers/1.json
  def show
  end

  # GET /vers/new
  def new
    @ver = Ver.new
  end

  # GET /vers/1/edit
  def edit
  end

  # POST /vers
  # POST /vers.json
  def create
    @ver = Ver.new(ver_params)

    respond_to do |format|
      if @ver.save
        format.html { redirect_to @ver, notice: 'Ver was successfully created.' }
        format.json { render :show, status: :created, location: @ver }
      else
        format.html { render :new }
        format.json { render json: @ver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vers/1
  # PATCH/PUT /vers/1.json
  def update
    respond_to do |format|
      if @ver.update(ver_params)
        format.html { redirect_to @ver, notice: 'Ver was successfully updated.' }
        format.json { render :show, status: :ok, location: @ver }
      else
        format.html { render :edit }
        format.json { render json: @ver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vers/1
  # DELETE /vers/1.json
  def destroy
    @ver.destroy
    respond_to do |format|
      format.html { redirect_to vers_url, notice: 'Ver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ver
      @ver = Ver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ver_params
      params.require(:ver).permit(:chapter, :test)
    end
end
