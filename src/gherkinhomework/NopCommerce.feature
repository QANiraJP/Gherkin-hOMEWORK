Feature: Bookcategory

  Background: I should be able to see homepage
    Given I Eenter URL "https://demo.nopcommerce.com/" in browser
    And   I am on Homepage

  Scenario Outline: I sould be able to see top menu tabs on homepage with categories
    When I am on Homepage
    Then I should be able to see top menu tabs with "<Categories>"

    Examples:
      | Categorie         |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see book page with filters
    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see"<Filters>"

    Examples:
      | Filter   |
      | Sort by  |
      | Display  |
      | The Grid |
      | List Tab |

  Scenario Outline: I should be able to see list of terms of each filter.
    Given I am on book page
    When  I Click on "<Filter>"
    Then  I should be able to see "<List>" in dropdown menu
    Examples:
      | Filter  | List                                                                           |
      | Sort by | Name A to Z , name: Z to A, Price: Low To High, Price: High to Low, Created on |
      | Display | 3 , 6 , 9                                                                      | #

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I Click on "<Filter>"
    And   I Click on any "<Option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see "<result>"
    Examples:
      | Filter  | Option             | result                                                              |
      | Sort by | Name:A to Z        | sorted products with the product name in aplphabatical order A to Z |
      | Sort by | Name:Z to A        | sorted products with the product name in aplphabatical order z to A |
      | Sort by | Price: Low To High | sorted products with price in descending order                      |
      | Sort by | Price: High to Low | sorted products with price in ascending order                       |
      | Sort by | Created on         | Recently added products shold be shown first                        |
      | Display | 3                  | 3 products in a page should be shown                                |
      | Display | 6                  | 6 products in a page should be shown                                |
      | Display | 9                  | 9 products in a page should be shown                                |


  Scenario Outline: I should be able to see product display format according display type as per given picture in srs document
    Given I am on book page
    When  I click on "<display format icon>"
    Then  I should be able to see product display format according display format type as per given picture in SRS document

    Examples:
      | display format icon |
      | Grid                |
      | List                |




