module Helper

  #takes a page screenshot and attaches it to the test case report
  def take_screenshot(file_name,result)
    file_path = "reports/screenshots/test_#{result}"
    screenshot = "#{file_path}/#{file_name}.png"
    page.save_screenshot(screenshot)
    attach(screenshot, 'image/png')
  end

end
