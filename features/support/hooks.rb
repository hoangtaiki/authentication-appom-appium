Before do
end

After do |scenario|
  if scenario.failed?
    page.driver.browser.save_screenshot("#{scenario.__id__}.png")
    embed("#{scenario.__id__}.png", 'image/png', 'SCREENSHOT')
    p "FAILED ==> #{scenario.feature.name} => #{scenario.name}"
  else
    p "PASSED ==> #{scenario.feature.name} => #{scenario.name}"
  end
end
