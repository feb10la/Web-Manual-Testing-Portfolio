Feature: Product Filter Functionality
    To allow users to sort products based on different criteria

    Scenario: Filter product by name A-Z
        Given user is logged in and on the product page
        When user clicks the Filter icon
        And selects filter “Name (A-Z)”
        Then products should be sorted alphabetically from A to Z

    Scenario: Filter product by name Z-A
        Given user is logged in and on the product page
        When user clicks the Filter icon
        And selects filter “Name (Z-A)”
        Then products should be sorted alphabetically from Z to A

    Scenario: Filter product by price Low-High
        Given user is logged in and on the product page
        When user clicks the Filter icon
        And selects filter “Price (Low-High)”
        Then products should be sorted by ascending price

    Scenario: Filter product by price High-Low
        Given user is logged in and on the product page
        When user clicks the Filter icon
        And selects filter “Price (High-Low)”
        Then products should be sorted by descending price
