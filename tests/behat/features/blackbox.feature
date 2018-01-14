Feature: Getbootstrap smoke testing
  As an anonymous user
  I should be able to navigate through website pages using Nav buttons


  Scenario: Open home page and find text
    Given I am on "http://getbootstrap.com/"
    Then I should see text matching "Build responsive, mobile-first projects on the web with the world's most popular front-end component library."
    When I follow "Documentation"
    Then I should see text matching "Get started with Bootstrap"
    When I follow "Examples"
    Then I should see text matching "Quickly get a project started with any of our examples ranging from using parts of the framework to custom components and layouts."