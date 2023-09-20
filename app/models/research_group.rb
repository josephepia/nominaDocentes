# == Schema Information
#
# Table name: research_groups
#
#  id              :integer          not null, primary key
#  nombre          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  researchtype_id :integer          not null
#  user_id         :integer          not null
#
# Indexes
#
#  index_research_groups_on_researchtype_id  (researchtype_id)
#  index_research_groups_on_user_id          (user_id)
#
# Foreign Keys
#
#  researchtype_id  (researchtype_id => researchtypes.id)
#  user_id          (user_id => users.id)
#
class ResearchGroup < ApplicationRecord
  belongs_to :user
  belongs_to :researchtype
end
