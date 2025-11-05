Feature: Checkout and Logout
    To ensure checkout process and logout functionality work correctly

    Scenario: proceed to checkout successfully
        Given user has at least one product in the cart
        When user clicks “Checkout”
        Then user should be redirected to the checkout page

    Scenario: Fill in Checkout Information Form
        Given the user is on the Checkout Information page
        When the user enters valid First Name, Last Name, and Postal Code
        And clicks the "Continue" button
        Then the system should redirect the user to the Checkout Overview page
        And display the correct product details and price summary

    Scenario: Review Product Summary on Checkout Overview
        Given the user is on the Checkout Overview page
        When the user verifies product name, quantity, and price
        And clicks the "Finish" button
        Then the system should redirect the user to the Checkout Complete page

    Scenario: Display Confirmation Message After Successful Checkout
        Given the user is on the Checkout Complete page
        When the order has been successfully processed
        Then the system should display the message "Thank you for your order!"
        And the cart should be cleared
        And a "Back Home" button should be available


    Scenario: Checkout with empty cart
        Given user has no product in the cart
        When user clicks “Checkout”
        Then Systems should display error message “Need to add products before checkout”
        And user remains on the cart page

    Scenario: Logout from system
        Given user is on the product page
        When user clicks the navigation menu
        And select “Log Out”
        Then user should be redirected to the login page
