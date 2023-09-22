# == Schema Information
#
# Table name: users
#
#  id                            :integer          not null, primary key
#  email                         :string           default("")
#  encrypted_password            :string           default(""), not null
#  identificacion                :string
#  nombre                        :string
#  remember_created_at           :datetime
#  reset_password_sent_at        :datetime
#  reset_password_token          :string
#  created_at                    :datetime         not null
#  updated_at                    :datetime         not null
#  aspiringTeachingCategory_id   :integer
#  contractedTeachingCategory_id :integer
#  researcherCategory_id         :integer
#
# Indexes
#
#  index_users_on_aspiringTeachingCategory_id    (aspiringTeachingCategory_id)
#  index_users_on_contractedTeachingCategory_id  (contractedTeachingCategory_id)
#  index_users_on_email                          (email) UNIQUE
#  index_users_on_researcherCategory_id          (researcherCategory_id)
#  index_users_on_reset_password_token           (reset_password_token) UNIQUE
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
