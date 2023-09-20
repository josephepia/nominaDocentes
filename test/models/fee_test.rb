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
require "test_helper"

class FeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
