require "application_system_test_case"

class PayrollsTest < ApplicationSystemTestCase
  setup do
    @payroll = payrolls(:one)
  end

  test "visiting the index" do
    visit payrolls_url
    assert_selector "h1", text: "Payrolls"
  end

  test "should create payroll" do
    visit payrolls_url
    click_on "New payroll"

    fill_in "Bonificaciontotal", with: @payroll.bonificacionTotal
    fill_in "Contract", with: @payroll.contract_id
    fill_in "Degrretype", with: @payroll.degrretype_id
    fill_in "Fee", with: @payroll.fee_id
    fill_in "Horasportrabajar", with: @payroll.horasPorTrabajar
    fill_in "Horasrestante", with: @payroll.horasRestante
    fill_in "Horastrabajadas", with: @payroll.horasTrabajadas
    fill_in "Researchtype", with: @payroll.researchtype_id
    fill_in "Sueldobase", with: @payroll.sueldoBase
    fill_in "Sueldototal", with: @payroll.sueldoTotal
    fill_in "User", with: @payroll.user_id
    fill_in "Valorhorasrestantes", with: @payroll.valorHorasRestantes
    fill_in "Valorhorastrabajadas", with: @payroll.valorHorasTrabajadas
    click_on "Create Payroll"

    assert_text "Payroll was successfully created"
    click_on "Back"
  end

  test "should update Payroll" do
    visit payroll_url(@payroll)
    click_on "Edit this payroll", match: :first

    fill_in "Bonificaciontotal", with: @payroll.bonificacionTotal
    fill_in "Contract", with: @payroll.contract_id
    fill_in "Degrretype", with: @payroll.degrretype_id
    fill_in "Fee", with: @payroll.fee_id
    fill_in "Horasportrabajar", with: @payroll.horasPorTrabajar
    fill_in "Horasrestante", with: @payroll.horasRestante
    fill_in "Horastrabajadas", with: @payroll.horasTrabajadas
    fill_in "Researchtype", with: @payroll.researchtype_id
    fill_in "Sueldobase", with: @payroll.sueldoBase
    fill_in "Sueldototal", with: @payroll.sueldoTotal
    fill_in "User", with: @payroll.user_id
    fill_in "Valorhorasrestantes", with: @payroll.valorHorasRestantes
    fill_in "Valorhorastrabajadas", with: @payroll.valorHorasTrabajadas
    click_on "Update Payroll"

    assert_text "Payroll was successfully updated"
    click_on "Back"
  end

  test "should destroy Payroll" do
    visit payroll_url(@payroll)
    click_on "Destroy this payroll", match: :first

    assert_text "Payroll was successfully destroyed"
  end
end
