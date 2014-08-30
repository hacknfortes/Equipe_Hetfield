class VotoController < ApplicationController
  def create
    voto = Voto.new(usuario: current_usuario)
    voto.receita = Receita.find(params[:receita_id])
    voto.categoria = Categoria.find(params[:categoria_id])
    voto.like = params[:like]
    voto.save

    respond_to do |format|
      if voto.save
        session[:already_voted] = voto.receita_id
        format.html { redirect_to voto.receita, notice: 'Seu voto foi computado' }
      else
        format.html { redirect_to voto.receita, notice: 'Não foi possivel computar seu voto' }
      end
    end
  end
end
