# == Schema Information
#
# Table name: user_experiences
#
#  id            :integer          not null, primary key
#  anos          :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  experience_id :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_user_experiences_on_experience_id  (experience_id)
#  index_user_experiences_on_user_id        (user_id)
#
# Foreign Keys
#
#  experience_id  (experience_id => experiences.id)
#  user_id        (user_id => users.id)
#
require "test_helper"

class UserExperienceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
