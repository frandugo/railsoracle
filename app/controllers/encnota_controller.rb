class EncnotaController < ApplicationController
  before_action :set_encnotum, only: [:show, :edit, :update, :destroy]

  # GET /encnota
  # GET /encnota.json
  def index
    @encnota = Encnotum.all
  end

  # GET /encnota/1
  # GET /encnota/1.json
  def show
  end

  # GET /encnota/new
  def new
    @encnotum = Encnotum.new
  end

  # GET /encnota/1/edit
  def edit
  end

  # POST /encnota
  # POST /encnota.json
  def create
    @encnotum = Encnotum.new(encnotum_params)

    respond_to do |format|
      if @encnotum.save
        format.html { redirect_to @encnotum, notice: 'Encnotum was successfully created.' }
        format.json { render :show, status: :created, location: @encnotum }
      else
        format.html { render :new }
        format.json { render json: @encnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /encnota/1
  # PATCH/PUT /encnota/1.json
  def update
    respond_to do |format|
      if @encnotum.update(encnotum_params)
        format.html { redirect_to @encnotum, notice: 'Encnotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @encnotum }
      else
        format.html { render :edit }
        format.json { render json: @encnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /encnota/1
  # DELETE /encnota/1.json
  def destroy
    @encnotum.destroy
    respond_to do |format|
      format.html { redirect_to encnota_url, notice: 'Encnotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_encnotum
      @encnotum = Encnotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def encnotum_params
      params.require(:encnotum).permit(:grupo_id, :curso_id, :asignatura_id,
      :docente_id, :periodo_id)
    end
end
