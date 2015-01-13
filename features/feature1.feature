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
  Then I fill out address information
  Then I should see “130 S. Meridian” selected in the order settings
  Then I click “Specialty Pizza”
  Then I click “Order” for Chicken & Bacon Carbonara
  Then I click “Add to Order”
  Then I click “Checkout” button
  Then I click Add More Items
  Then I click “Pasta”
  Then I click “Order” for Pasta Primavera
  Then I click “Add to Order”
  Then I click “Checkout” button
  Then I check my order total




