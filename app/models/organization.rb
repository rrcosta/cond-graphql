class Organization < ApplicationRecord
  validates :name, :cnpj, presence: true
end
