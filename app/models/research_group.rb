class ResearchGroup < ApplicationRecord
  belongs_to :user
  belongs_to :researchtype
end
