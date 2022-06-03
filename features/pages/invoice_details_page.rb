class InvoiceDetails < SitePrism::Page
  set_url '/invoice/0'

  element :page_header, 'h2'
  element :hotel_name, 'h4'
  element :invoice_date, :xpath, '//li[contains(.,"Invoice Date")]'
  element :due_date, :xpath, '//li[contains(.,"Due Date")]'
  element :invoice_number, 'h6'
  element :booking_code, :xpath, '//td[contains(.,"Booking Code")]/following-sibling::td'
  element :customer_details, :xpath, '//h5[contains(.,"Customer Details")]/following-sibling::div'
  element :room, :xpath, '//td[contains(.,"Room")]/following-sibling::td'
  element :check_in, :xpath, '//td[contains(.,"Check-In")]/following-sibling::td'
  element :check_out, :xpath, '//td[contains(.,"Check-Out")]/following-sibling::td'
  element :total_stay_count, :xpath, '//td[contains(.,"Total Stay Count")]/following-sibling::td'
  element :total_stay_amount, :xpath, '//td[contains(.,"Total Stay Amount")]/following-sibling::td'
  element :deposit_now, :xpath, '//h5[contains(.,"Billing Details")]/following-sibling::table//tbody//td[1]'
  element :tax_and_vat, :xpath, '//h5[contains(.,"Billing Details")]/following-sibling::table//tbody//td[2]'
  element :total_amount, :xpath, '//h5[contains(.,"Billing Details")]/following-sibling::table//tbody//td[3]'

end
