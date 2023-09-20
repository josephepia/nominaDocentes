# == Schema Information
#
# Table name: areas
#
#  id          :integer          not null, primary key
#  nombre      :string
#  descripcion :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Area < ApplicationRecord
end
