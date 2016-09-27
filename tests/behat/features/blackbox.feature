@javascript
Feature: Basic validation
  In order to prove Drupal was installed properly
  As a developer
  I need to use the step definitions of this context

#  Scenario: Open home page and find text
#    Given I am on the homepage
#   Then I should see the heading "Welcome to Site-Install"

  Scenario: Open home page and find text
    Given I am on "https://www.invokana.com/"
    And I scroll to x "0" y "1000" coordinates of page
    And I wait
    And I click on element which has onclick handler located at "#edit-submit"
    And I wait
    Then I should not see cookie "referee_done"
    Then I set cookie "referee_done" with value "/patient"
    Given I am on "/patient/immunology"
    And I wait
    Given I hover over the item "#block-menu-a-menu-invokana-main-menu > ul > li:nth-child(2) > a"
    And I wait
    Then the url should match "plaque psoriasis"
    #Then I should see an ".global-psa-home" element
    Given I am on "/"
    #Then the page is secure
    Then I should see "Welcome to Site-Install"
    When I fill in "edit-name" with "QA"
    And I fill in "edit-pass" with "Test" 
    And I press "edit-submit"
    Then the url should match "destination node"
    #Then I should see "Username field is required."
    Then I execute jQuery click on selector "#edit-submit"
    #Given I fill in "x" with "x"
    Given I follow "Request new password via e-mail."
    Then the page is secure
    Given I am at "/"
    Then the "x" element should contain "r"
