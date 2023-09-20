# == Schema Information
#
# Table name: vacants
#
#  id         :integer          not null, primary key
#  cantidad   :integer
#  area_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Vacant < ApplicationRecord
  belongs_to :area
end
