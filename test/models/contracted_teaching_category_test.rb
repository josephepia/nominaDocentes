# == Schema Information
#
# Table name: contracted_teaching_categories
#
#  id             :integer          not null, primary key
#  descripcion    :string
#  salario        :float
#  tiempoCompleto :boolean
#  medioTiempo    :boolean
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require "test_helper"

class ContractedTeachingCategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
