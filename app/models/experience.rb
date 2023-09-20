# == Schema Information
#
# Table name: experiences
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Experience < ApplicationRecord
end
