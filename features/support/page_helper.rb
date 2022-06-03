Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file }

#so we don't have to instance our pages every time within our test cases
module Pages

  def login_page
    @login ||= Login.new
  end

  def invoice_list_page
    @invoice_list ||= InvoiceList.new
  end

end
