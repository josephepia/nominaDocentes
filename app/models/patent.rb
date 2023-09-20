# == Schema Information
#
# Table name: patents
#
#  id            :integer          not null, primary key
#  nombre        :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  patenttype_id :integer          not null
#  user_id       :integer          not null
#
# Indexes
#
#  index_patents_on_patenttype_id  (patenttype_id)
#  index_patents_on_user_id        (user_id)
#
# Foreign Keys
#
#  patenttype_id  (patenttype_id => patenttypes.id)
#  user_id        (user_id => users.id)
#
class Patent < ApplicationRecord
  belongs_to :patenttype
  belongs_to :user
end
