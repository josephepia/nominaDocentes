# == Schema Information
#
# Table name: research_types
#
#  id         :integer          not null, primary key
#  nivel      :string
#  puntaje    :integer
#  bono       :float
#  semillero  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ResearchType < ApplicationRecord
end
