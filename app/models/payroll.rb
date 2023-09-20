class Payroll < ApplicationRecord
  belongs_to :user
  belongs_to :degrretype
  belongs_to :researchtype
  belongs_to :fee
  belongs_to :contract
end
