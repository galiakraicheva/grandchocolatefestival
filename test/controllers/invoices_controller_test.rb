require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { firm_one_address: @invoice.firm_one_address, firm_one_eik: @invoice.firm_one_eik, firm_one_mol: @invoice.firm_one_mol, firm_one_name: @invoice.firm_one_name, firm_one_vat: @invoice.firm_one_vat, firm_two_address: @invoice.firm_two_address, firm_two_eik: @invoice.firm_two_eik, firm_two_mol: @invoice.firm_two_mol, firm_two_name: @invoice.firm_two_name, firm_two_vat: @invoice.firm_two_vat, invoice_number: @invoice.invoice_number, paid: @invoice.paid } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { firm_one_address: @invoice.firm_one_address, firm_one_eik: @invoice.firm_one_eik, firm_one_mol: @invoice.firm_one_mol, firm_one_name: @invoice.firm_one_name, firm_one_vat: @invoice.firm_one_vat, firm_two_address: @invoice.firm_two_address, firm_two_eik: @invoice.firm_two_eik, firm_two_mol: @invoice.firm_two_mol, firm_two_name: @invoice.firm_two_name, firm_two_vat: @invoice.firm_two_vat, invoice_number: @invoice.invoice_number, paid: @invoice.paid } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end
