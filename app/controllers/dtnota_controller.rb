class DtnotaController < ApplicationController
  before_action :set_dtnotum, only: [:show, :edit, :update, :destroy]

  # GET /dtnota
  # GET /dtnota.json
  def index
    @dtnota = Dtnotum.all
  end

  # GET /dtnota/1
  # GET /dtnota/1.json
  def show
  end

  # GET /dtnota/new
  def new
    @dtnotum = Dtnotum.new
  end

  # GET /dtnota/1/edit
  def edit
  end

  # POST /dtnota
  # POST /dtnota.json
  def create
    @dtnotum = Dtnotum.new(dtnotum_params)

    respond_to do |format|
      if @dtnotum.save
        format.html { redirect_to @dtnotum, notice: 'Dtnotum was successfully created.' }
        format.json { render :show, status: :created, location: @dtnotum }
      else
        format.html { render :new }
        format.json { render json: @dtnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dtnota/1
  # PATCH/PUT /dtnota/1.json
  def update
    respond_to do |format|
      if @dtnotum.update(dtnotum_params)
        format.html { redirect_to @dtnotum, notice: 'Dtnotum was successfully updated.' }
        format.json { render :show, status: :ok, location: @dtnotum }
      else
        format.html { render :edit }
        format.json { render json: @dtnotum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dtnota/1
  # DELETE /dtnota/1.json
  def destroy
    @dtnotum.destroy
    respond_to do |format|
      format.html { redirect_to dtnota_url, notice: 'Dtnotum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dtnotum
      @dtnotum = Dtnotum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dtnotum_params
      params.require(:dtnotum).permit(:estudiante_id, :taller, :quiz, :examen, :seguimiento, :encnota_id)
    end
end
