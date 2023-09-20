# == Schema Information
#
# Table name: aspiring_teaching_categories
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class AspiringTeachingCategory < ApplicationRecord
    has_many :users
end
