class HomeController < ApplicationController
  def index
  	@receitas = Receita.all
  end
end
