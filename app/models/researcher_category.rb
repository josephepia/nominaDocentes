# == Schema Information
#
# Table name: researcher_categories
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class ResearcherCategory < ApplicationRecord
    has_many :users
end
