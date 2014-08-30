class VotosController < ApplicationController
  before_action :set_voto, only: [:show, :edit, :update, :destroy]

  # GET /votos
  # GET /votos.json
  def index
    @votos = Voto.all
  end

  # GET /votos/1
  # GET /votos/1.json
  def show
  end

  # GET /votos/new
  def new
    @voto = Voto.new
  end

  # GET /votos/1/edit
  def edit
  end

  # POST /votos
  # POST /votos.json
  def create
    @voto = Voto.new(voto_params)

    respond_to do |format|
      if @voto.save
        format.html { redirect_to @voto, notice: 'Voto was successfully created.' }
        format.json { render :show, status: :created, location: @voto }
      else
        format.html { render :new }
        format.json { render json: @voto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /votos/1
  # PATCH/PUT /votos/1.json
  def update
    respond_to do |format|
      if @voto.update(voto_params)
        format.html { redirect_to @voto, notice: 'Voto was successfully updated.' }
        format.json { render :show, status: :ok, location: @voto }
      else
        format.html { render :edit }
        format.json { render json: @voto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /votos/1
  # DELETE /votos/1.json
  def destroy
    @voto.destroy
    respond_to do |format|
      format.html { redirect_to votos_url, notice: 'Voto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voto
      @voto = Voto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def voto_params
      params.require(:voto).permit(:receita_id, :categoria_id, :usuario_id, :like, :comentario)
    end
end
