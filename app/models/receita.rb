class Receita < ActiveRecord::Base
  has_and_belongs_to_many :categorias

  belongs_to :usuario

  validates :titulo, presence: true, length: { maximum: 255 }
  validates :descricao, presence: true
end
