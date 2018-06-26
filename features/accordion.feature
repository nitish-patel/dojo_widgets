Feature: The Accordion Widget

  Scenario: Selecting a panel from the Accordion
    Given I visit the dojo demo page
    When I select the "Popups and Alerts" Accordion panel
    Then the Accordion panel for "Popups and Alerts" should be visible