class Categoria < ActiveRecord::Base
  has_and_belongs_to_many :receita
end
