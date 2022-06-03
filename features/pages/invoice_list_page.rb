class InvoiceList < SitePrism::Page
  set_url '/account'

  element :page_header, 'h2'
  element :first_invoice_link, '[href="/invoice/0"]'

  def click_first_invoice_link
    first_invoice_link.click
  end

end
