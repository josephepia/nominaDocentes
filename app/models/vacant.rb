# == Schema Information
#
# Table name: vacants
#
#  id         :integer          not null, primary key
#  cantidad   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  area_id    :integer          not null
#
# Indexes
#
#  index_vacants_on_area_id  (area_id)
#
# Foreign Keys
#
#  area_id  (area_id => areas.id)
#
class Vacant < ApplicationRecord
  belongs_to :area
end
