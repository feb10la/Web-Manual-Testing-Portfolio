Feature: Manage Cart Items
    To verify user can remove items and continue shopping

    Scenario: Remove product from cart
        Given user has added product to the cart
        When user opens the cart
        And clicks “Remove” on a product
        Then product should be removed from the cart
        And cart item count should decrease

    Scenario: Continue shopping from cart
        Given user has at least one product in the car
        When user clicks “Continue Shopping”
        Then user should be redirected to the product page
