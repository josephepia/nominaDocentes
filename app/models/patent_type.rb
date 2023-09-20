# == Schema Information
#
# Table name: patent_types
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class PatentType < ApplicationRecord
end
