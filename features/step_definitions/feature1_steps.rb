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
def fill_out_location
    
    select('Business', from: 'Address_Type_Select')
    fill_in('Street', with: '130 S. Meridian')
    fill_in('City', with: 'Indianapolis')
    select('IN', from: 'Region')
    fill_in('Postal_Code', :with => '46225')
end
Then(/^I select "(.*?)" from address type drop down$/) do |arg1|
    # express the regexp above with the code you wish you had
end

Then(/^I enter “(\d+) S\. Meridian” in the street address field$/) do |arg1|
    # express the regexp above with the code you wish you had
end

Then(/^I enter “Indianapolis” in the city field$/) do
    # express the regexp above with the code you wish you had
end

Then(/^I select “IN from state drop down$/) do
    # express the regexp above with the code you wish you had
end

def continue_button
    find_button('Continue').click
end
Then(/^I click the “Continue” button$/) do
    # express the regexp above with the code you wish you had
end
Then(/^I should see “(\d+) S\. Meridian” selected in the order settings$/) do |arg1|
    # express the regexp above with the code you wish you had
end
Then(/^I expand “Specialty Pizza”$/) do
    # express the regexp above with the code you wish you had
end
Then(/^I click “Order” for Chicken & Bacon Carbonara$/) do
    # express the regexp above with the code you wish you had
end
Then(/^I click “Add to Order”$/) do
    # express the regexp above with the code you wish you had
end
Then(/^I click “Checkout” button$/) do
    # express the regexp above with the code you wish you had
end