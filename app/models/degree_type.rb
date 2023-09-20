# == Schema Information
#
# Table name: degree_types
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  nivel       :integer
#  bono        :float
#  posgrado    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class DegreeType < ApplicationRecord
end
