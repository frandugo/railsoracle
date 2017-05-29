class PosgradosController < ApplicationController
  before_action :set_posgrado, only: [:show, :edit, :update, :destroy]

  # GET /posgrados
  # GET /posgrados.json
  def index
    @posgrados = Posgrado.all
  end

  # GET /posgrados/1
  # GET /posgrados/1.json
  def show
  end

  # GET /posgrados/new
  def new
    @posgrado = Posgrado.new
  end

  # GET /posgrados/1/edit
  def edit
  end

  # POST /posgrados
  # POST /posgrados.json
  def create
    @posgrado = Posgrado.new(posgrado_params)

    respond_to do |format|
      if @posgrado.save
        format.html { redirect_to @posgrado, notice: 'Posgrado was successfully created.' }
        format.json { render :show, status: :created, location: @posgrado }
      else
        format.html { render :new }
        format.json { render json: @posgrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posgrados/1
  # PATCH/PUT /posgrados/1.json
  def update
    respond_to do |format|
      if @posgrado.update(posgrado_params)
        format.html { redirect_to @posgrado, notice: 'Posgrado was successfully updated.' }
        format.json { render :show, status: :ok, location: @posgrado }
      else
        format.html { render :edit }
        format.json { render json: @posgrado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posgrados/1
  # DELETE /posgrados/1.json
  def destroy
    @posgrado.destroy
    respond_to do |format|
      format.html { redirect_to posgrados_url, notice: 'Posgrado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_posgrado
      @posgrado = Posgrado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def posgrado_params
      params.require(:posgrado).permit(:nompos, :numtitulo, :profesion_id)
    end
end
