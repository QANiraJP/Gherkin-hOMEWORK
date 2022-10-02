Feature: Demo Nopcommerce's top menu acceptance criteria
  As a user, I would like to check acceptanace criteria of Nopcommerce Top Menu

  Background: User is on Given URL
    When User types URL https://demo.nopcommerce.com
    And  User clicks on Enter button4
    Then User is on give URL page

  Scenario: Verify that user can navigate to Books Category
    When User is on given URL
    And  Click on Books tab on Top menu
    Then User is navigated to Books Category Page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When User is on given URL
    And  Click on Books tab on Top menu
    And  check Filters and List tab
    Then Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'sort by' filter on Book category page
    When User is on Books Category page
    And  check 'sort by' filter is present
    Then 'sort by' filter is available on Book Category Page

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Check 'Display' filter is present
    Then   'Display' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   Check 'Grid' tab is present
    Then 'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books Category page
    When  User is on Books Category page
    And   check 'List' tab is present
    Then  'List' tab is available on Book Category page

  Scenario: verify that user can see 'Nane: A to Z' selection is present in 'Sort by' filter
    Given User is on Books Category page
    When  User is on Books Category page
    And   click on 'Sort by' Pilter And check that Name: A to Z selection is present
    Then  Name: A to Z' selection is present in 'Sort by filter

  Scenario: Verify that user can see Name: A to Z' is first option in 'Sort by' filter
    Given User is on Books Category page
    When  User is on Books Category page
    And   click on 'Sort by Filter
    And   check that "Name: A to Z' is first in order
    Then  'Name: A to Z' is first option in order


  Scenario: Verify that user can see Name: A to Z' filter is functioning as expected (Note: Products are filtered in alphabetical order)
    Given User is on Books Category page
    When  User is on Books Category page
    And   click on 'Sort by' Pilter
    And   elect Name: 'A to Z' filter
    Then  All products are displayed in alphabetical order


