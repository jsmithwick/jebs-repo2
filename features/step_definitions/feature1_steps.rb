When /^I visit the Dominos home page$/ do
    visit('https://order.dominos.com/')
end
Then /^I should see the Dominos home page$/ do
    expect(page).to have_selector(:id, 'homePage')
end
When(/^I click the "(.*?)" tab$/) do |tab|
    click_link('Order Online')
    find('.Delivery').click
end
Then (/^I should see the Dominos Location Search page$/) do
    expect(page).to have_selector(:id, 'locationsSearchPage')
end
Then(/^I fill out address information$/)do
    
    fill_in('Street', :with => '130 S. Meridian')
    fill_in('City', :with => 'Indianapolis')
    select('IN', :from => 'Region')
    fill_in('Postal_Code', :with => '46225')
    find_button('Continue').click
end

Then(/^I should see “(\d+) S\. Meridian” selected in the order settings$/) do |arg1|
    # express the regexp above with the code you wish you had
end
Then(/^I click “Specialty Pizza”$/) do
    find(:xpath, '//*[@id="entreesPage"]/div[5]/a/div[2]/h2').click
end
Then(/^I click “Order” for Chicken & Bacon Carbonara$/) do
    find(:xpath, '//*[@id="categoryPage2"]/section[1]/div/div[1]/a').click
end
Then(/^I click “Add to Order”$/) do
    find(:xpath, '//*[@id="builderDefaultPage"]/div/div[2]/form/div[3]/button').click
end
Then(/^I click “Checkout” button$/) do
    find(:xpath, '//*[@id="orderSummaryInColumn"]/div[2]/div[1]/a/span').click
end
Then(/^I click Add More Items$/) do
    find(:xpath, '//*[@id="backToMenu"]').click
end
Then(/^I click “Pasta”$/) do
    find(:xpath, '//*[@id="entreesPage"]/div[6]/a/div[2]/h2').click
end
Then(/^I click “Order” for Pasta Primavera$/) do
    find(:xpath, '//*[@id="categoryPage2"]/section/div/div[4]/a').click
end
Then(/^I check my order total$/) do
    new_total=find(:xpath,"//td[@class='finalizedTotal js-total']").native.text
    expect(new_total).to eq("$18.51")
    print new_total
    save_screenshot('screenshot.png')
end
