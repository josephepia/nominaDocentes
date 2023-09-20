require "test_helper"

class PayrollsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payroll = payrolls(:one)
  end

  test "should get index" do
    get payrolls_url
    assert_response :success
  end

  test "should get new" do
    get new_payroll_url
    assert_response :success
  end

  test "should create payroll" do
    assert_difference("Payroll.count") do
      post payrolls_url, params: { payroll: { bonificacionTotal: @payroll.bonificacionTotal, contract_id: @payroll.contract_id, degrretype_id: @payroll.degrretype_id, fee_id: @payroll.fee_id, horasPorTrabajar: @payroll.horasPorTrabajar, horasRestante: @payroll.horasRestante, horasTrabajadas: @payroll.horasTrabajadas, researchtype_id: @payroll.researchtype_id, sueldoBase: @payroll.sueldoBase, sueldoTotal: @payroll.sueldoTotal, user_id: @payroll.user_id, valorHorasRestantes: @payroll.valorHorasRestantes, valorHorasTrabajadas: @payroll.valorHorasTrabajadas } }
    end

    assert_redirected_to payroll_url(Payroll.last)
  end

  test "should show payroll" do
    get payroll_url(@payroll)
    assert_response :success
  end

  test "should get edit" do
    get edit_payroll_url(@payroll)
    assert_response :success
  end

  test "should update payroll" do
    patch payroll_url(@payroll), params: { payroll: { bonificacionTotal: @payroll.bonificacionTotal, contract_id: @payroll.contract_id, degrretype_id: @payroll.degrretype_id, fee_id: @payroll.fee_id, horasPorTrabajar: @payroll.horasPorTrabajar, horasRestante: @payroll.horasRestante, horasTrabajadas: @payroll.horasTrabajadas, researchtype_id: @payroll.researchtype_id, sueldoBase: @payroll.sueldoBase, sueldoTotal: @payroll.sueldoTotal, user_id: @payroll.user_id, valorHorasRestantes: @payroll.valorHorasRestantes, valorHorasTrabajadas: @payroll.valorHorasTrabajadas } }
    assert_redirected_to payroll_url(@payroll)
  end

  test "should destroy payroll" do
    assert_difference("Payroll.count", -1) do
      delete payroll_url(@payroll)
    end

    assert_redirected_to payrolls_url
  end
end
