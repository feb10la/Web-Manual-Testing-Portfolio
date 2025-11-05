Feature: Product Detail Page
    To verify user can view detailed information of a selected product

    Scenario: View product details after selecting a product
        Given user is logged in and on the product page
        When user selects product “Sauce Labs Backpack”
        Then the product detail page should be displayed with name, price, and description

    Scenario: product details match selected product
        Given user is on the product page
        When user clicks on product “Sauce Labs Backpack”
        Then product detail page should display the correct name, price, and description
