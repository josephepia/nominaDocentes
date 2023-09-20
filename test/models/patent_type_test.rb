# == Schema Information
#
# Table name: patent_types
#
#  id          :integer          not null, primary key
#  descripcion :string
#  puntaje     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class PatentTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
