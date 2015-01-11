@orderonline
Feature: Order Dominos Pizza Online
  We want to step through a simple scenario for training
 
@homepage
Scenario: Check the Dominos home page
  When I visit the Dominos home page
  Then I should see the Dominos home page
@location
Scenario: Location Search for Dominos Pizza
  Given I visit the Dominos home page
  When I click the "Order Online" tab
  Then I should see the Dominos Location Search page
@location
Scenario: Complete Location Search
  And I select "Business" from address type drop down
  And I enter “130 S. Meridian” in the street address field
  And I enter “Indianapolis” in the city field
  And I select “IN from state drop down
  And I click the “Continue” button
  Then I should see “130 S. Meridian” selected in the order settings
@orderselection
Scenario: Select Order Items
  Then I expand “Specialty Pizza”
  Then I click “Order” for Chicken & Bacon Carbonara
  Then I click “Add to Order”
  Then I click “Checkout” button

