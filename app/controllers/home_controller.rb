class HomeController < ApplicationController
  def index
    @receitas = Receita.page(params[:page])
  end
end
