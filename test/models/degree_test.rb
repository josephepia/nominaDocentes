# == Schema Information
#
# Table name: degrees
#
#  id            :integer          not null, primary key
#  descripcion   :text
#  nombre        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  degreetype_id :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_degrees_on_degreetype_id  (degreetype_id)
#  index_degrees_on_user_id        (user_id)
#
# Foreign Keys
#
#  degreetype_id  (degreetype_id => degreetypes.id)
#  user_id        (user_id => users.id)
#
require "test_helper"

class DegreeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
