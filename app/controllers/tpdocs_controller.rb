class TpdocsController < ApplicationController
  before_action :set_tpdoc, only: [:show, :edit, :update, :destroy]

  # GET /tpdocs
  # GET /tpdocs.json
  def index
    @tpdocs = Tpdoc.all
  end

  # GET /tpdocs/1
  # GET /tpdocs/1.json
  def show
  end

  # GET /tpdocs/new
  def new
    @tpdoc = Tpdoc.new
  end

  # GET /tpdocs/1/edit
  def edit
  end

  # POST /tpdocs
  # POST /tpdocs.json
  def create
    @tpdoc = Tpdoc.new(tpdoc_params)

    respond_to do |format|
      if @tpdoc.save
        format.html { redirect_to @tpdoc, notice: 'Tpdoc was successfully created.' }
        format.json { render :show, status: :created, location: @tpdoc }
      else
        format.html { render :new }
        format.json { render json: @tpdoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tpdocs/1
  # PATCH/PUT /tpdocs/1.json
  def update
    respond_to do |format|
      if @tpdoc.update(tpdoc_params)
        format.html { redirect_to @tpdoc, notice: 'Tpdoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @tpdoc }
      else
        format.html { render :edit }
        format.json { render json: @tpdoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tpdocs/1
  # DELETE /tpdocs/1.json
  def destroy
    @tpdoc.destroy
    respond_to do |format|
      format.html { redirect_to tpdocs_url, notice: 'Tpdoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tpdoc
      @tpdoc = Tpdoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tpdoc_params
      params.require(:tpdoc).permit(:tipodoc, :documento_id)
    end
end
