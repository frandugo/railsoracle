class TpasisController < ApplicationController
  before_action :set_tpasi, only: [:show, :edit, :update, :destroy]

  # GET /tpasis
  # GET /tpasis.json
  def index
    @tpasis = Tpasi.all
  end

  # GET /tpasis/1
  # GET /tpasis/1.json
  def show
  end

  # GET /tpasis/new
  def new
    @tpasi = Tpasi.new
  end

  # GET /tpasis/1/edit
  def edit
  end

  # POST /tpasis
  # POST /tpasis.json
  def create
    @tpasi = Tpasi.new(tpasi_params)

    respond_to do |format|
      if @tpasi.save
        format.html { redirect_to @tpasi, notice: 'Tpasi was successfully created.' }
        format.json { render :show, status: :created, location: @tpasi }
      else
        format.html { render :new }
        format.json { render json: @tpasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tpasis/1
  # PATCH/PUT /tpasis/1.json
  def update
    respond_to do |format|
      if @tpasi.update(tpasi_params)
        format.html { redirect_to @tpasi, notice: 'Tpasi was successfully updated.' }
        format.json { render :show, status: :ok, location: @tpasi }
      else
        format.html { render :edit }
        format.json { render json: @tpasi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tpasis/1
  # DELETE /tpasis/1.json
  def destroy
    @tpasi.destroy
    respond_to do |format|
      format.html { redirect_to tpasis_url, notice: 'Tpasi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpasi
      @tpasi = Tpasi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tpasi_params
      params.require(:tpasi).permit(:nomtpasi)
    end
end
