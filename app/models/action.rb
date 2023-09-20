# == Schema Information
#
# Table name: actions
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Action < ApplicationRecord
    has_and_belongs_to_many :resources
    has_and_belongs_to_many :permissions
end
