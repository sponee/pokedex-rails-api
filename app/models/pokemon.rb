class Pokemon < ActiveRecord::Base
  validates :pokedex_number, uniqueness: { scope: :english_name }
end
