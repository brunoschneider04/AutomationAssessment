Given('the user is logged into the system') do
  login_page.load
  login_page.log_in(CONFIG['username'], CONFIG['password'])
end

And('is on the Invoice List Page') do
  expect(invoice_list_page.page_header.text).to eql 'Invoice List'
end

When('he clicks on the first Invoice Details link on the list') do
  @invoice_details = window_opened_by do
    invoice_list_page.click_first_invoice_link
  end
end

Then('the correct information is presented') do |table|
  within_window @invoice_details do
    expect(page).to have_current_path('https://automation-sandbox.herokuapp.com/invoice/0', url: true)

    @invoice_details_page = InvoiceDetails.new #had to be explicitly declared because of the new window open
    expect(@invoice_details_page.page_header.text).to eq 'Invoice Details'
    expect(@invoice_details_page.invoice_number.text).to eq "Invoice ##{table.rows_hash['InvoiceNumber']} details"
    expect(@invoice_details_page.invoice_date.text).to eq "Invoice Date: #{table.rows_hash['InvoiceDate']}"
    expect(@invoice_details_page.due_date.text).to eq "Due Date: #{table.rows_hash['DueDate']}"
    expect(@invoice_details_page.booking_code.text).to eq table.rows_hash['BookingCode']
    expect(@invoice_details_page.room.text).to eq table.rows_hash['Room']
    expect(@invoice_details_page.check_in.text).to eq table.rows_hash['CheckIn']
    expect(@invoice_details_page.check_out.text).to eq table.rows_hash['CheckOut']
    expect(@invoice_details_page.customer_details.text).to eq table.rows_hash['CustomerDetails']
    expect(@invoice_details_page.deposit_now.text).to eq table.rows_hash['DepositNow']
    expect(@invoice_details_page.tax_and_vat.text).to eq table.rows_hash['Tax&Vat']
    expect(@invoice_details_page.total_amount.text).to eq table.rows_hash['TotalAmount']
  end
end
