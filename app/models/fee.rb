# == Schema Information
#
# Table name: fees
#
#  id          :integer          not null, primary key
#  descripcion :string
#  valor       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Fee < ApplicationRecord
end
