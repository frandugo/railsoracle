class NotaController < ApplicationController
  before_action :set_notum, only: [:show, :edit, :update, :destroy]

  # GET /nota
  # GET /nota.json
  def index
    @nota = Notum.all
  end

  # GET /nota/1
  # GET /nota/1.json
  def show
  end

  # GET /nota/new
  def new
    @notum = Notum.new
  end

  # GET /nota/1/edit
  def edit
  end

  # POST /nota
  # POST /nota.json
  def create
    @notum = Notum.new(notum_params)

    plsql.crear_nota @notum.estudiante_id, @notum.docente_id, @notum.curso_id,
    @notum.grupo_id , @notum.asignatura_id, @notum.nota1, @notum.nota2,
    @notum.nota3, @notum.nota4
    p = true
    respond_to do |format|
      #if @notum.save
      if p == true
        format.html { redirect_to @notum, notice: 'Notum was successfully created.' }
        format.json { render :show, status: :created, location: @notum }
      else
        format.html { render :new }
        format.json { render json: @notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nota/1
  # PATCH/PUT /nota/1.json
  def update
    respond_to do |format|
      if @notum.update(notum_params)
        format.html { redirect_to @notum, notice: 'Notum was successfully updated.' }
        format.json { render :show, status: :ok, location: @notum }
      else
        format.html { render :edit }
        format.json { render json: @notum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nota/1
  # DELETE /nota/1.json
  def destroy
    @notum.destroy
    respond_to do |format|
      format.html { redirect_to nota_url, notice: 'Notum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notum
      @notum = Notum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notum_params
      params.require(:notum).permit(:nota1, :nota2, :nota3, :nota4, :curso_id,
      :grupo_id, :estudiante_id, :docente_id, :asignatura_id)
    end
end
