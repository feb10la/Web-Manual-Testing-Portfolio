Feature: Add Product to Cart
    To verify user can add items to the shopping cart

    Scenario: add product to cart successfully
        Given user is on the product page
        When user selects product “Sauce Labs Backpack”
        And clicks “Add to cart”
        Then product should be added to the cart
        And cart icon should show updated item count

    Scenario: Cart icon updates after adding product
        Given user is on the product page
        When user adds one product to the cart
        Then cart icon should display number “1” matching the quantity added

    Scenario: Product added appears in cart page
        Given user is on the product page
        When user adds product “Sauce Labs Backpack” to the cart
        And clicks the cart icon
        Then product “Sauce Labs Backpack” should be listed in the cart

    Scenario: product details display correctly in cart
        Given user has added product “Sauce Labs Backpack” to the cart
        When user opens the cart
        Then product name, price, and total should match product details


    Scenario: Display error when adding product fails
        Given user is on the product page with unstable network
        When user tries to add product “Sauce Labs Backpack” to the cart
        Then the system should display error message “Failed to add product to cart”
        And product should not appear in the cart
