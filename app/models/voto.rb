class Voto < ActiveRecord::Base
  belongs_to :receita
  belongs_to :categoria
  belongs_to :usuario
end
