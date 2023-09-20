# == Schema Information
#
# Table name: research_types
#
#  id         :integer          not null, primary key
#  nivel      :string
#  puntaje    :integer
#  bono       :float
#  semillero  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ResearchTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
