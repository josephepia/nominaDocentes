# == Schema Information
#
# Table name: authorizations
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  action_id   :integer          not null
#  resource_id :integer          not null
#  user_id     :integer          not null
#
# Indexes
#
#  index_authorizations_on_action_id    (action_id)
#  index_authorizations_on_resource_id  (resource_id)
#  index_authorizations_on_user_id      (user_id)
#
# Foreign Keys
#
#  action_id    (action_id => actions.id)
#  resource_id  (resource_id => resources.id)
#  user_id      (user_id => users.id)
#
require "test_helper"

class AuthorizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
