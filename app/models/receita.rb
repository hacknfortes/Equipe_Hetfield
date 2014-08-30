class Receita < ActiveRecord::Base

  belongs_to :usuario
  belongs_to :cloned_from, class_name: 'Receita', foreign_key: :cloned_from_id

  validates :titulo, presence: true, length: { maximum: 255 }
  validates :descricao, presence: true
end
