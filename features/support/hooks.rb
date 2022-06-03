#uses the take_screenshot method to attach a screenshot to the test case report after the scenario is completed
After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

  if scenario.failed?
    take_screenshot(scenario_name.downcase!, 'fail')
  else
    take_screenshot(scenario_name.downcase!, 'success')
  end

end
