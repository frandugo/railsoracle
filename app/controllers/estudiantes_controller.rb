class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: [:show, :edit, :update, :destroy]

  # GET /estudiantes
  # GET /estudiantes.json
  def index
    @estudiantes = Estudiante.all
  end

  # GET /estudiantes/1
  # GET /estudiantes/1.json
  def show
  end

  # GET /estudiantes/new
  def new
    @estudiante = Estudiante.new
    1.times { @estudiante.documentos.build}
    1.times { @estudiante.direccions.build}
    1.times { @estudiante.correos.build}
    1.times { @estudiante.telefonos.build}
    1.times { @estudiante.acudientes.build}
  end

  # GET /estudiantes/1/edit
  def edit
  end

  # POST /estudiantes
  # POST /estudiantes.json
  def create
    @estudiante = Estudiante.new(estudiante_params)
    doc = @estudiante.documentos
    dir = @estudiante.direccions
    cor = @estudiante.correos
    tel = @estudiante.telefonos
    acu = @estudiante.acudientes
    plsql.crear_est @estudiante.nom1, @estudiante.nom2, @estudiante.ape1,
    @estudiante.ape2, doc[0].numdoc.to_s, doc[0].tipodoc.to_s, dir[0].direccion,
    dir[0].municipio_id, acu[0].nom1.to_s, acu[0].nom2.to_s, acu[0].ape1.to_s,
    acu[0].ape2.to_s, acu[0].numdoc.to_s, acu[0].tipodoc.to_s,
    cor[0].correo,tel[0].telefono, @estudiante.curso_id, @estudiante.grupo_id.to_s
    p = true
    respond_to do |format|
      if p == true
        format.html { redirect_to @estudiante, notice: 'Estudiante was successfully created.' }
        format.json { render :show, status: :created, location: @estudiante }
      else
        format.html { render :new }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudiantes/1
  # PATCH/PUT /estudiantes/1.json
  def update
    @estudiante = Estudiante.new(estudiante_params)

    plsql.actu_est @estudiante.id ,@estudiante.nom1, @estudiante.nom2, @estudiante.ape1,
    @estudiante.ape2, @estudiante.documentos[0].numdoc.to_s, @estudiante.documentos[0].tipodoc.to_s,
    @estudiante.direccions[0].direccion,@estudiante.direccions[0].municipio_id,
    @estudiante.correos[0].correo, @estudiante.telefonos[0].telefono
    p = true
    respond_to do |format|
        if p == true
      #if @estudiante.update(estudiante_params)
        format.html { redirect_to @estudiante, notice: 'Estudiante was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudiante }
      else
        format.html { render :edit }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudiantes/1
  # DELETE /estudiantes/1.json
  def destroy
      plsql.eli_est (@estudiante.id)
    respond_to do |format|
      format.html { redirect_to estudiantes_url, notice: 'Estudiante was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudiante_params
      params.require(:estudiante).permit(:nom1, :nom2, :ape1, :ape2, :acudiente_id,
      :curso_id, :grupo_id, documentos_attributes: [:id, :numdoc, :tipodoc],
      acudientes_attributes: [:id, :nom1, :nom2, :ape1, :ape2, :numdoc, :tipodoc],
      direccions_attributes: [:id, :direccion, :municipio_id],
      correos_attributes: [:id, :correo], telefonos_attributes: [:id, :telefono])
    end
end
