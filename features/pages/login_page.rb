class Login < SitePrism::Page
  set_url '/'

  element :username_field, '[name="username"]'
  element :password_field, '[name="password"]'
  element :login_btn, '#btnLogin'
  element :failed_login_alert, 'div.alert'

  def log_in(username, password)
    username_field.set username
    password_field.set password
    login_btn.click
  end

end
