# == Schema Information
#
# Table name: payrolls
#
#  id                   :integer          not null, primary key
#  bonificacionTotal    :float
#  horasPorTrabajar     :integer
#  horasRestante        :integer
#  horasTrabajadas      :integer
#  sueldoBase           :float
#  sueldoTotal          :float
#  valorHorasRestantes  :float
#  valorHorasTrabajadas :float
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  contract_id          :integer          not null
#  degrretype_id        :integer          not null
#  fee_id               :integer          not null
#  researchtype_id      :integer          not null
#  user_id              :integer          not null
#
# Indexes
#
#  index_payrolls_on_contract_id      (contract_id)
#  index_payrolls_on_degrretype_id    (degrretype_id)
#  index_payrolls_on_fee_id           (fee_id)
#  index_payrolls_on_researchtype_id  (researchtype_id)
#  index_payrolls_on_user_id          (user_id)
#
# Foreign Keys
#
#  contract_id      (contract_id => contracts.id)
#  degrretype_id    (degrretype_id => degrretypes.id)
#  fee_id           (fee_id => fees.id)
#  researchtype_id  (researchtype_id => researchtypes.id)
#  user_id          (user_id => users.id)
#
class Payroll < ApplicationRecord
  belongs_to :user
  belongs_to :degrretype
  belongs_to :researchtype
  belongs_to :fee
  belongs_to :contract
end
