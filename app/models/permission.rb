# == Schema Information
#
# Table name: permissions
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Permission < ApplicationRecord
    has_and_belongs_to_many :roles
    has_and_belongs_to_many :actions
end
