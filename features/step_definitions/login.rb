Given('the user is on the login page') do
  login_page.load
end

When('he enters a valid username and password and clicks on the Login button') do
  login_page.log_in(CONFIG['username'], CONFIG['password'])
end

Then('the Invoice List Page should be displayed') do
  expect(page).to have_current_path('https://automation-sandbox.herokuapp.com/account', url: true)
  expect(invoice_list_page.page_header.text).to eql 'Invoice List'
end

And('he enters an invalid {string} and {string} and clicks on the Login button') do |username, password|
  login_page.log_in(username, password)
end

Then('an error message should be displayed') do
  expect(login_page.failed_login_alert.text).to eql 'Wrong username or password.'
end
