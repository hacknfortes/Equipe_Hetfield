class ReceitasController < ApplicationController
  before_action :set_receita, only: [:show, :clonar, :destroy]

  before_action :authenticate_usuario!

  # GET /receitas
  # GET /receitas.json
  def index
    @receitas = Receita.all
    @receitas = current_usuario.receitas.page(params[:page])
  end

  # GET /receitas/1
  # GET /receitas/1.json
  def show
  end

  # GET /receitas/new
  def new
    @receita = current_usuario.receitas.new
  end

  # GET /receitas/1/clonar
  def clonar
    categorias = @receita.categorias.collect { |e| e.id }
    @receita = current_usuario.receitas.new(@receita.attributes)
    @receita.id = nil
    @receita.cloned_from_id = params[:id]
    @receita.categoria_ids = categorias
  end

  # POST /receitas
  # POST /receitas.json
  def create
    @receita = current_usuario.receitas.new(receita_params)

    respond_to do |format|
      if @receita.save
        format.html { redirect_to @receita, notice: 'Receita cadastrada com sucesso.' }
        format.json { render :show, status: :created, location: @receita }
      else
        format.html { render :new }
        format.json { render json: @receita.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # DELETE /receitas/1
  # DELETE /receitas/1.json
  def destroy
    @receita.destroy
    respond_to do |format|
      format.html { redirect_to receitas_url, notice: 'Receita was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receita
      @receita = current_usuario.receitas.find(params[:id]) if usuario_signed_in?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receita_params
      params.require(:receita).permit(:cloned_from_id, :titulo, :descricao, categoria_ids: [])
    end
end
