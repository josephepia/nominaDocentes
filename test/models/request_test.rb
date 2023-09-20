# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  desripcion :string
#  estado     :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#  vacant_id  :integer          not null
#
# Indexes
#
#  index_requests_on_user_id    (user_id)
#  index_requests_on_vacant_id  (vacant_id)
#
# Foreign Keys
#
#  user_id    (user_id => users.id)
#  vacant_id  (vacant_id => vacants.id)
#
require "test_helper"

class RequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
