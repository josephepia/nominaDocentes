# == Schema Information
#
# Table name: roles
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Role < ApplicationRecord
    has_and_belongs_to_many :permissions
end
