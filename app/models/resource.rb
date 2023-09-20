# == Schema Information
#
# Table name: resources
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Resource < ApplicationRecord
    has_and_belongs_to_many :actions
end
