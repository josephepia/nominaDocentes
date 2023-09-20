# == Schema Information
#
# Table name: contracts
#
#  id              :integer          not null, primary key
#  descripcion     :text
#  horasRestantes  :integer
#  horasSemanales  :integer
#  horasTrabajadas :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer          not null
#
# Indexes
#
#  index_contracts_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
require "test_helper"

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
