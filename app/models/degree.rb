class Degree < ApplicationRecord
  belongs_to :user
  belongs_to :degreetype
end
